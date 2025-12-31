.class public Lorg/h2/command/ddl/AlterTableAlterColumn;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private addAfter:Ljava/lang/String;

.field private addBefore:Ljava/lang/String;

.field private columnsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field private columnsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field private defaultExpression:Lorg/h2/expression/Expression;

.field private ifNotExists:Z

.field private ifTableExists:Z

.field private newColumn:Lorg/h2/table/Column;

.field private newSelectivity:Lorg/h2/expression/Expression;

.field private newVisibility:Z

.field private oldColumn:Lorg/h2/table/Column;

.field private tableName:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method

.method private checkClustering(Lorg/h2/table/Column;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCluster()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'\'"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/h2/table/Column;->isAutoIncrement()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CLUSTERING && auto-increment columns"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static checkDefaultReferencesTable(Lorg/h2/table/Table;Lorg/h2/expression/Expression;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ExpressionVisitor;->getDependenciesVisitor(Ljava/util/HashSet;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const p0, 0x15fe3

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private checkNoNullValues(Lorg/h2/table/Table;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT COUNT(*) FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IS NULL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->next()Z

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object p1

    const v0, 0x15fe1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkNullable(Lorg/h2/table/Table;)V
    .locals 3

    invoke-virtual {p1}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-interface {v0, v1}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/h2/index/IndexType;->isHash()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x15fdb

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    return-void
.end method

.method private checkViews(Lorg/h2/schema/SchemaObject;Lorg/h2/schema/SchemaObject;)V
    .locals 5

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v0, v3}, Lorg/h2/engine/Database;->getTempTableName(Ljava/lang/String;Lorg/h2/engine/Session;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4, p1, v3}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3, p2, v0}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkViewsAreValid(Lorg/h2/engine/DbObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3, p2, v1}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, p2, p1, v0}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1, p1, v0}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4, p2, v1}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, p2, p1, v0}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    throw v3

    :catchall_2
    move-exception p2

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1, p1, v0}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    throw p2
.end method

.method private checkViewsAreValid(Lorg/h2/engine/DbObject;)V
    .locals 3

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/DbObject;

    instance-of v1, v0, Lorg/h2/table/TableView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/h2/table/TableView;

    invoke-virtual {v1}, Lorg/h2/table/TableView;->getQuery()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    invoke-direct {p0, v0}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkViewsAreValid(Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cloneTableStructure(Lorg/h2/table/Table;[Lorg/h2/table/Column;Lorg/h2/engine/Database;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/h2/table/Table;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/table/Table;",
            "[",
            "Lorg/h2/table/Column;",
            "Lorg/h2/engine/Database;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;)",
            "Lorg/h2/table/Table;"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    invoke-virtual {v3}, Lorg/h2/table/Column;->getClone()Lorg/h2/table/Column;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->type:I

    const/16 v2, 0xc

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_4

    iget-object p2, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToRemove:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Column;

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    invoke-virtual {v6}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v8

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {p5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->addBefore:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/table/Column;->getColumnId()I

    move-result p2

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->addAfter:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/table/Column;->getColumnId()I

    move-result p2

    add-int/2addr p2, v5

    goto :goto_3

    :cond_6
    array-length p2, p2

    :goto_3
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Column;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p5, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p2, v6

    goto :goto_4

    :cond_7
    const/16 p2, 0xb

    if-ne v0, p2, :cond_8

    iget-object p2, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getColumnId()I

    move-result p2

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-virtual {p5, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {p3}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result p2

    new-instance p3, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {p3}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    iput-object p4, p3, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    iput p2, p3, Lorg/h2/command/ddl/CreateTableData;->id:I

    iput-object p5, p3, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result p2

    iput-boolean p2, p3, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    invoke-virtual {p1}, Lorg/h2/table/Table;->isPersistData()Z

    move-result p2

    iput-boolean p2, p3, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    invoke-virtual {p1}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result p2

    iput-boolean p2, p3, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    invoke-virtual {p1}, Lorg/h2/table/Table;->isHidden()Z

    move-result p2

    iput-boolean p2, p3, Lorg/h2/command/ddl/CreateTableData;->isHidden:Z

    iput-boolean v5, p3, Lorg/h2/command/ddl/CreateTableData;->create:Z

    iget-object p2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iput-object p2, p3, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/h2/schema/Schema;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object p2

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/h2/engine/DbObjectBase;->setComment(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_9

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v7, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->type:I

    if-ne v7, v3, :cond_b

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6}, Lorg/h2/table/Column;->getDefaultExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    if-nez v6, :cond_a

    const-string v6, "NULL"

    goto :goto_6

    :cond_a
    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    invoke-virtual {v6}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_c
    const-string v2, " AS SELECT "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_d

    const/16 v0, 0x2a

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_7
    const-string v0, " FROM "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p2, v3}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    invoke-direct {p0, p3, v5}, Lorg/h2/command/ddl/AlterTableAlterColumn;->execute(Ljava/lang/String;Z)V

    iget-object p2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, p2, v0}, Lorg/h2/schema/Schema;->getTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object p2

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1}, Lorg/h2/table/Table;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/DbObject;

    instance-of v3, v2, Lorg/h2/schema/Sequence;

    if-eqz v3, :cond_f

    goto :goto_8

    :cond_f
    instance-of v3, v2, Lorg/h2/index/Index;

    if-eqz v3, :cond_10

    move-object v3, v2

    check-cast v3, Lorg/h2/index/Index;

    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->getBelongsToConstraint()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    invoke-interface {v2}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    instance-of v3, v2, Lorg/h2/table/TableView;

    if-eqz v3, :cond_12

    goto :goto_8

    :cond_12
    invoke-interface {v2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v3

    if-nez v3, :cond_13

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_13
    const-string v3, "_"

    .line 1
    invoke-static {p4, v3}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2
    invoke-interface {v2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    instance-of v6, v2, Lorg/h2/constraint/ConstraintReferential;

    if-eqz v6, :cond_14

    move-object v6, v2

    check-cast v6, Lorg/h2/constraint/ConstraintReferential;

    invoke-virtual {v6}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v7

    if-eq v7, p1, :cond_14

    invoke-virtual {v6}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v7

    invoke-virtual {v6, v7, p2, v3, v1}, Lorg/h2/constraint/ConstraintReferential;->getCreateSQLForCopy(Lorg/h2/table/Table;Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_14
    move-object v6, v4

    :goto_9
    if-nez v6, :cond_15

    invoke-interface {v2, p2, v3}, Lorg/h2/engine/DbObject;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_15
    if-eqz v6, :cond_e

    instance-of v2, v2, Lorg/h2/schema/TriggerObject;

    if-eqz v2, :cond_16

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    invoke-direct {p0, v6, v5}, Lorg/h2/command/ddl/AlterTableAlterColumn;->execute(Ljava/lang/String;Z)V

    goto :goto_8

    :cond_17
    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->setModified()V

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_18
    :goto_a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_19

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/h2/table/Column;

    invoke-virtual {p5}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->removeSequence(Lorg/h2/schema/Sequence;)V

    invoke-virtual {p5, v4}, Lorg/h2/table/Column;->setSequence(Lorg/h2/schema/Sequence;)V

    goto :goto_a

    :cond_19
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Lorg/h2/command/ddl/AlterTableAlterColumn;->execute(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_1a
    return-object p2
.end method

.method private convertAutoIncrementColumn(Lorg/h2/table/Table;Lorg/h2/table/Column;)V
    .locals 3

    invoke-virtual {p2}, Lorg/h2/table/Column;->isAutoIncrement()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/h2/table/Column;->isPrimaryKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "IDENTITY"

    invoke-virtual {p2, p1}, Lorg/h2/table/Column;->setOriginalSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result p1

    invoke-virtual {p2, v1, v2, v0, p1}, Lorg/h2/table/Column;->convertAutoIncrementToSequence(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private copyData(Lorg/h2/table/Table;)V
    .locals 9

    const-string v0, "DROP TABLE "

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v3}, Lorg/h2/engine/Database;->getTempTableName(Ljava/lang/String;Lorg/h2/engine/Session;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v4

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, v1

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lorg/h2/command/ddl/AlterTableAlterColumn;->cloneTableStructure(Lorg/h2/table/Table;[Lorg/h2/table/Column;Lorg/h2/engine/Database;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/h2/table/Table;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkViews(Lorg/h2/schema/SchemaObject;Lorg/h2/schema/SchemaObject;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/h2/table/Table;->getViews()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/table/TableView;

    invoke-virtual {p1, v7}, Lorg/h2/table/Table;->removeView(Lorg/h2/table/TableView;)V

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IGNORE"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;->execute(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, p1, v2, v4}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/table/Table;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/DbObject;

    instance-of v4, v0, Lorg/h2/schema/Sequence;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lorg/h2/schema/SchemaObject;

    instance-of v6, v0, Lorg/h2/constraint/Constraint;

    if-eqz v6, :cond_4

    invoke-interface {v0}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7, v4}, Lorg/h2/schema/Schema;->findConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/constraint/Constraint;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v2}, Lorg/h2/schema/Schema;->getUniqueConstraintName(Lorg/h2/engine/Session;Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    instance-of v6, v0, Lorg/h2/index/Index;

    if-eqz v6, :cond_5

    invoke-interface {v0}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7, v4}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7, v2, v4}, Lorg/h2/schema/Schema;->getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_2
    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v6, v0, v4}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/TableView;

    invoke-virtual {v0, v3, v3}, Lorg/h2/table/TableView;->getCreateSQL(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;->execute(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;->execute(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15ffd

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_8
    const-string p1, "TEMP TABLE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private execute(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->update()I

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->commit(Z)V

    :cond_0
    return-void
.end method

.method private removeSequence(Lorg/h2/table/Table;Lorg/h2/schema/Sequence;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/h2/table/Table;->removeSequence(Lorg/h2/schema/Sequence;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lorg/h2/schema/Sequence;->setBelongsToTable(Z)V

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0, p2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->type:I

    return v0
.end method

.method public setAddAfter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->addAfter:Ljava/lang/String;

    return-void
.end method

.method public setAddBefore(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->addBefore:Ljava/lang/String;

    return-void
.end method

.method public setColumnsToRemove(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToRemove:Ljava/util/ArrayList;

    return-void
.end method

.method public setDefaultExpression(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->defaultExpression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->ifNotExists:Z

    return-void
.end method

.method public setIfTableExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->ifTableExists:Z

    return-void
.end method

.method public setNewColumn(Lorg/h2/table/Column;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    return-void
.end method

.method public setNewColumns(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToAdd:Ljava/util/ArrayList;

    return-void
.end method

.method public setOldColumn(Lorg/h2/table/Column;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    return-void
.end method

.method public setSelectivity(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newSelectivity:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->type:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newVisibility:Z

    return-void
.end method

.method public update()I
    .locals 8

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->ifTableExists:Z

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const v0, 0xa476

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v2, v5}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    invoke-virtual {v2}, Lorg/h2/table/Table;->checkSupportAlter()V

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/h2/table/Column;->getDefaultExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkDefaultReferencesTable(Lorg/h2/table/Table;Lorg/h2/expression/Expression;)V

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-direct {p0, v4}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkClustering(Lorg/h2/table/Column;)V

    :cond_2
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToAdd:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/Column;

    invoke-virtual {v5}, Lorg/h2/table/Column;->getDefaultExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkDefaultReferencesTable(Lorg/h2/table/Table;Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v5}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkClustering(Lorg/h2/table/Column;)V

    goto :goto_0

    :cond_3
    iget v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->type:I

    const/16 v5, 0x57

    if-eq v4, v5, :cond_f

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->type:I

    .line 1
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    goto/16 :goto_6

    .line 2
    :pswitch_0
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newSelectivity:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v4}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getInt()I

    move-result v1

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v4, v1}, Lorg/h2/table/Column;->setSelectivity(I)V

    :goto_1
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {v2}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v0, v0

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v0, v4

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Lorg/h2/table/Table;->dropMultipleColumnsConstraintsAndIndexes(Lorg/h2/engine/Session;Ljava/util/ArrayList;)V

    :cond_4
    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->copyData(Lorg/h2/table/Table;)V

    goto/16 :goto_6

    :cond_5
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fe4

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_2
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-virtual {v1, v4}, Lorg/h2/table/Column;->isWideningConversion(Lorg/h2/table/Column;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-direct {p0, v2, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->convertAutoIncrementColumn(Lorg/h2/table/Table;Lorg/h2/table/Column;)V

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-virtual {v1, v4}, Lorg/h2/table/Column;->copy(Lorg/h2/table/Column;)V

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v0, v5}, Lorg/h2/table/Column;->setSequence(Lorg/h2/schema/Sequence;)V

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v5}, Lorg/h2/table/Column;->setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v0, v3}, Lorg/h2/table/Column;->setConvertNullToDefault(Z)V

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkNoNullValues(Lorg/h2/table/Table;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkNullable(Lorg/h2/table/Table;)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getVisible()Z

    move-result v0

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getVisible()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/table/Column;->setVisible(Z)V

    :cond_9
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newColumn:Lorg/h2/table/Column;

    invoke-direct {p0, v2, v0}, Lorg/h2/command/ddl/AlterTableAlterColumn;->convertAutoIncrementColumn(Lorg/h2/table/Table;Lorg/h2/table/Column;)V

    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->copyData(Lorg/h2/table/Table;)V

    :goto_3
    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->setModified()V

    goto/16 :goto_6

    :pswitch_3
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    if-nez v1, :cond_a

    move-object v1, v5

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v1

    :goto_4
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->defaultExpression:Lorg/h2/expression/Expression;

    invoke-static {v2, v4}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkDefaultReferencesTable(Lorg/h2/table/Table;Lorg/h2/expression/Expression;)V

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v4, v5}, Lorg/h2/table/Column;->setSequence(Lorg/h2/schema/Sequence;)V

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->defaultExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v4, v5, v6}, Lorg/h2/table/Column;->setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v2, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->removeSequence(Lorg/h2/table/Table;Lorg/h2/schema/Sequence;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v4}, Lorg/h2/table/Column;->isNullable()Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_6

    :cond_b
    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkNullable(Lorg/h2/table/Table;)V

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v4, v1}, Lorg/h2/table/Column;->setNullable(Z)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->isNullable()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->checkNoNullValues(Lorg/h2/table/Table;)V

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    invoke-virtual {v1, v3}, Lorg/h2/table/Column;->setNullable(Z)V

    goto/16 :goto_1

    :pswitch_6
    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->ifNotExists:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/table/Table;->doesColumnExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->columnsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->isAutoIncrement()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v4

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v7

    invoke-virtual {v1, v5, v6, v4, v7}, Lorg/h2/table/Column;->convertAutoIncrementToSequence(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V

    goto :goto_5

    :cond_f
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->oldColumn:Lorg/h2/table/Column;

    iget-boolean v4, p0, Lorg/h2/command/ddl/AlterTableAlterColumn;->newVisibility:Z

    invoke-virtual {v1, v4}, Lorg/h2/table/Column;->setVisible(Z)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->setModified()V

    goto/16 :goto_1

    :goto_6
    return v3

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
