.class public Lorg/h2/command/ddl/AlterTableAddConstraint;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private checkExisting:Z

.field private checkExpression:Lorg/h2/expression/Expression;

.field private comment:Ljava/lang/String;

.field private constraintName:Ljava/lang/String;

.field private createdIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private deleteAction:I

.field private final ifNotExists:Z

.field private ifTableExists:Z

.field private index:Lorg/h2/index/Index;

.field private indexColumns:[Lorg/h2/table/IndexColumn;

.field private primaryKeyHash:Z

.field private refIndex:Lorg/h2/index/Index;

.field private refIndexColumns:[Lorg/h2/table/IndexColumn;

.field private refSchema:Lorg/h2/schema/Schema;

.field private refTableName:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private type:I

.field private updateAction:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->createdIndexes:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->ifNotExists:Z

    return-void
.end method

.method private static canUseIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Z
    .locals 3

    invoke-interface {p0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    invoke-interface {p0}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p0}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    array-length p1, p1

    if-eqz p3, :cond_4

    array-length p3, p2

    if-ge p1, p3, :cond_1

    return v1

    :cond_1
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_7

    aget-object v0, p2, p3

    iget-object v0, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p0, v0}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v0

    if-ltz v0, :cond_3

    array-length v2, p2

    if-lt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    array-length p3, p2

    if-eq p1, p3, :cond_5

    return v1

    :cond_5
    array-length p1, p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_7

    aget-object v0, p2, p3

    iget-object v0, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p0, v0}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v0

    if-gez v0, :cond_6

    return v1

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_3
    return v1
.end method

.method private static canUseUniqueIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Z
    .locals 4

    invoke-interface {p0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_5

    invoke-interface {p0}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p0

    array-length p1, p0

    array-length v0, p2

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object p1

    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length p2, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method private createIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;
    .locals 8

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/h2/index/IndexType;->createUnique(ZZ)Lorg/h2/index/IndexType;

    move-result-object p3

    :goto_0
    move-object v5, p3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result p3

    invoke-static {p3}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object p3

    goto :goto_0

    :goto_1
    const/4 p3, 0x1

    invoke-virtual {v5, p3}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    iget-object p3, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    if-nez p3, :cond_1

    const-string p3, "CONSTRAINT"

    :cond_1
    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_INDEX_"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p3}, Lorg/h2/schema/Schema;->getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    move-object v2, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lorg/h2/table/Table;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->createdIndexes:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    throw p1
.end method

.method private generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/schema/Schema;->getUniqueConstraintName(Lorg/h2/engine/Session;Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    return-object p1
.end method

.method private static getIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;
    .locals 4

    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    invoke-static {v2, p0, p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private static getUniqueIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Lorg/h2/index/Index;
    .locals 4

    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    invoke-static {v2, p0, p1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseUniqueIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private tryUpdate()I
    .locals 14

    iget-boolean v0, p0, Lorg/h2/command/ddl/DefineCommand;->transactional:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->ifTableExists:Z

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const v0, 0xa476

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/h2/schema/Schema;->findConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/constraint/Constraint;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->ifNotExists:Z

    if-eqz v0, :cond_3

    return v3

    :cond_3
    const v0, 0x15fbd

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v2, v5}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v4}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    iget v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_18

    const/4 v6, 0x4

    if-eq v4, v6, :cond_15

    const/4 v6, 0x5

    if-eq v4, v6, :cond_c

    const/4 v5, 0x6

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v4, v2}, Lorg/h2/table/IndexColumn;->mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V

    invoke-virtual {v2}, Lorg/h2/table/Table;->findPrimaryKey()Lorg/h2/index/Index;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    const v6, 0x15fa1

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/constraint/Constraint;

    const-string v8, "PRIMARY KEY"

    invoke-virtual {v7}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v6}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    array-length v5, v4

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v7, v7

    if-ne v5, v7, :cond_8

    const/4 v5, 0x0

    :goto_1
    array-length v7, v4

    if-ge v5, v7, :cond_9

    aget-object v7, v4, v5

    iget-object v7, v7, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    iget-object v8, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    aget-object v8, v8, v5

    iget-object v8, v8, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    if-ne v7, v8, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    invoke-static {v6}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v6}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_9
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-nez v4, :cond_a

    invoke-virtual {v2}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result v4

    iget-boolean v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->primaryKeyHash:Z

    invoke-static {v4, v5}, Lorg/h2/index/IndexType;->createPrimaryKey(ZZ)Lorg/h2/index/IndexType;

    move-result-object v10

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const-string v6, "PRIMARY_KEY_"

    invoke-virtual {v4, v5, v2, v6}, Lorg/h2/schema/Schema;->getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v8

    :try_start_0
    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v9, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, v2

    move-object v7, v4

    invoke-virtual/range {v5 .. v12}, Lorg/h2/table/Table;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_2
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v7

    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object v8

    new-instance v4, Lorg/h2/constraint/ConstraintUnique;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    const/4 v10, 0x1

    move-object v5, v4

    move-object v9, v2

    invoke-direct/range {v5 .. v10}, Lorg/h2/constraint/ConstraintUnique;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;Z)V

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-virtual {v4, v5}, Lorg/h2/constraint/ConstraintUnique;->setColumns([Lorg/h2/table/IndexColumn;)V

    :goto_3
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-virtual {v4, v5, v1}, Lorg/h2/constraint/ConstraintUnique;->setIndex(Lorg/h2/index/Index;Z)V

    goto/16 :goto_a

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_c
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refSchema:Lorg/h2/schema/Schema;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refTableName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/h2/schema/Schema;->getTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v4

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    invoke-virtual {v4}, Lorg/h2/table/Table;->canReference()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v5, v2}, Lorg/h2/table/IndexColumn;->mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-eqz v5, :cond_d

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v5, v2, v6, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-interface {v5}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v2, v5, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-nez v5, :cond_e

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-direct {p0, v2, v5, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->createIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    :goto_5
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    if-nez v6, :cond_f

    invoke-virtual {v4}, Lorg/h2/table/Table;->getPrimaryKey()Lorg/h2/index/Index;

    move-result-object v6

    invoke-interface {v6}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v6

    iput-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    goto :goto_6

    :cond_f
    invoke-static {v6, v4}, Lorg/h2/table/IndexColumn;->mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V

    :goto_6
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    array-length v6, v6

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v7, v7

    if-ne v6, v7, :cond_13

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    if-eqz v6, :cond_10

    invoke-interface {v6}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v6

    if-ne v6, v4, :cond_10

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v6, v4, v7, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    invoke-interface {v6}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    const/4 v6, 0x1

    goto :goto_7

    :cond_10
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    const/4 v6, 0x0

    :goto_7
    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    if-nez v7, :cond_11

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v4, v7, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v7

    iput-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    if-nez v7, :cond_11

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    invoke-direct {p0, v4, v6, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->createIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v6

    iput-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    goto :goto_8

    :cond_11
    move v1, v6

    :goto_8
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v6

    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/h2/constraint/ConstraintReferential;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v9

    invoke-direct {v8, v9, v6, v7, v2}, Lorg/h2/constraint/ConstraintReferential;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-virtual {v8, v6}, Lorg/h2/constraint/ConstraintReferential;->setColumns([Lorg/h2/table/IndexColumn;)V

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-virtual {v8, v6, v5}, Lorg/h2/constraint/ConstraintReferential;->setIndex(Lorg/h2/index/Index;Z)V

    invoke-virtual {v8, v4}, Lorg/h2/constraint/ConstraintReferential;->setRefTable(Lorg/h2/table/Table;)V

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    invoke-virtual {v8, v5}, Lorg/h2/constraint/ConstraintReferential;->setRefColumns([Lorg/h2/table/IndexColumn;)V

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    invoke-virtual {v8, v5, v1}, Lorg/h2/constraint/ConstraintReferential;->setRefIndex(Lorg/h2/index/Index;Z)V

    iget-boolean v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExisting:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v8, v1}, Lorg/h2/constraint/ConstraintReferential;->checkExistingData(Lorg/h2/engine/Session;)V

    :cond_12
    invoke-virtual {v4, v8}, Lorg/h2/table/Table;->addConstraint(Lorg/h2/constraint/Constraint;)V

    iget v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->deleteAction:I

    invoke-virtual {v8, v1}, Lorg/h2/constraint/ConstraintReferential;->setDeleteAction(I)V

    iget v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->updateAction:I

    invoke-virtual {v8, v1}, Lorg/h2/constraint/ConstraintReferential;->setUpdateAction(I)V

    move-object v4, v8

    goto/16 :goto_a

    :cond_13
    const/16 v0, 0x520a

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reference "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v4, v2}, Lorg/h2/table/IndexColumn;->mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-eqz v4, :cond_16

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v4, v2, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseUniqueIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    goto :goto_9

    :cond_16
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v2, v4}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getUniqueIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Lorg/h2/index/Index;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-nez v4, :cond_17

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-direct {p0, v2, v4, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->createIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    goto :goto_9

    :cond_17
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v7

    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object v8

    new-instance v4, Lorg/h2/constraint/ConstraintUnique;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    const/4 v10, 0x0

    move-object v5, v4

    move-object v9, v2

    invoke-direct/range {v5 .. v10}, Lorg/h2/constraint/ConstraintUnique;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;Z)V

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-virtual {v4, v5}, Lorg/h2/constraint/ConstraintUnique;->setColumns([Lorg/h2/table/IndexColumn;)V

    goto/16 :goto_3

    :cond_18
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v1

    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lorg/h2/constraint/ConstraintCheck;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {v13, v5, v1, v4, v2}, Lorg/h2/constraint/ConstraintCheck;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V

    new-instance v1, Lorg/h2/table/TableFilter;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    move-object v7, v2

    invoke-direct/range {v5 .. v12}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;ILorg/h2/table/IndexHints;)V

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v4, v1, v3}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExpression:Lorg/h2/expression/Expression;

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v13, v4}, Lorg/h2/constraint/ConstraintCheck;->setExpression(Lorg/h2/expression/Expression;)V

    invoke-virtual {v13, v1}, Lorg/h2/constraint/ConstraintCheck;->setTableFilter(Lorg/h2/table/TableFilter;)V

    iget-boolean v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExisting:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v13, v1}, Lorg/h2/constraint/ConstraintCheck;->checkExistingData(Lorg/h2/engine/Session;)V

    :cond_19
    move-object v4, v13

    :goto_a
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->comment:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/h2/engine/DbObjectBase;->setComment(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v2}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v4}, Lorg/h2/engine/Session;->addLocalTempTableConstraint(Lorg/h2/constraint/Constraint;)V

    goto :goto_b

    :cond_1a
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v4}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_b
    invoke-virtual {v2, v4}, Lorg/h2/table/Table;->addConstraint(Lorg/h2/constraint/Constraint;)V

    return v3
.end method


# virtual methods
.method public getIndexColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->type:I

    return v0
.end method

.method public setCheckExisting(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExisting:Z

    return-void
.end method

.method public setCheckExpression(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExpression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->comment:Ljava/lang/String;

    return-void
.end method

.method public setConstraintName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    return-void
.end method

.method public setDeleteAction(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->deleteAction:I

    return-void
.end method

.method public setIfTableExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->ifTableExists:Z

    return-void
.end method

.method public setIndex(Lorg/h2/index/Index;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    return-void
.end method

.method public setIndexColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setPrimaryKeyHash(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->primaryKeyHash:Z

    return-void
.end method

.method public setRefIndex(Lorg/h2/index/Index;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    return-void
.end method

.method public setRefIndexColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setRefTableName(Lorg/h2/schema/Schema;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refSchema:Lorg/h2/schema/Schema;

    iput-object p2, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refTableName:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->type:I

    return-void
.end method

.method public setUpdateAction(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->updateAction:I

    return-void
.end method

.method public update()I
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->tryUpdate()I

    move-result v0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->createdIndexes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, v2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_0

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    throw v0
.end method
