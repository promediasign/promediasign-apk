.class public Lorg/h2/command/ddl/CreateTable;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private asQuery:Lorg/h2/command/dml/Query;

.field private comment:Ljava/lang/String;

.field private final constraintCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/ddl/DefineCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Lorg/h2/command/ddl/CreateTableData;

.field private ifNotExists:Z

.field private onCommitDrop:Z

.field private onCommitTruncate:Z

.field private pkColumns:[Lorg/h2/table/IndexColumn;

.field private sortedInsertMode:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    new-instance p1, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {p1}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    iput-object p1, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/command/ddl/CreateTable;->constraintCommands:Ljava/util/ArrayList;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    iput-boolean p2, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    return-void
.end method

.method private generateColumnsFromQuery()V
    .locals 15

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    iget-object v1, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Expression;

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v7

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v10

    invoke-static {v6}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v4

    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-lez v9, :cond_1

    iget-wide v13, v4, Lorg/h2/value/DataType;->defaultPrecision:J

    cmp-long v9, v13, v11

    if-eqz v9, :cond_0

    cmp-long v9, v13, v7

    if-lez v9, :cond_1

    const-wide/16 v11, 0x7f

    cmp-long v9, v13, v11

    if-gez v9, :cond_1

    :cond_0
    move-wide v7, v13

    :cond_1
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getScale()I

    move-result v9

    if-lez v9, :cond_3

    iget v11, v4, Lorg/h2/value/DataType;->defaultScale:I

    if-eqz v11, :cond_2

    if-le v11, v9, :cond_3

    int-to-long v12, v11

    cmp-long v14, v12, v7

    if-gez v14, :cond_3

    :cond_2
    move v9, v11

    :cond_3
    int-to-long v11, v9

    cmp-long v13, v11, v7

    if-lez v13, :cond_4

    move-wide v7, v11

    :cond_4
    iget v4, v4, Lorg/h2/value/DataType;->type:I

    const/16 v11, 0x19

    if-ne v4, v11, :cond_6

    instance-of v4, v3, Lorg/h2/expression/ExpressionColumn;

    if-eqz v4, :cond_5

    check-cast v3, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v3}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Column;->getEnumerators()[Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v11, v3

    goto :goto_2

    :cond_5
    const v0, 0xc350

    const-string v1, "Unable to resolve enumerators of expression"

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    new-instance v3, Lorg/h2/table/Column;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII[Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/h2/command/ddl/CreateTable;->addColumn(Lorg/h2/table/Column;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private setPrimaryKeyColumns([Lorg/h2/table/IndexColumn;)Z
    .locals 5

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, p1

    array-length v0, v0

    const v3, 0x15fa1

    if-ne v2, v0, :cond_2

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    iget-object v0, v0, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-static {v3}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    iput-object p1, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    return v1
.end method


# virtual methods
.method public addColumn(Lorg/h2/table/Column;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v0, v0, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V
    .locals 3

    instance-of v0, p1, Lorg/h2/command/ddl/CreateIndex;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->constraintCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/h2/command/ddl/AlterTableAddConstraint;

    invoke-virtual {v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/ddl/CreateTable;->setPrimaryKeyColumns([Lorg/h2/table/IndexColumn;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateTable;->comment:Ljava/lang/String;

    return-void
.end method

.method public setGlobalTemporary(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->globalTemporary:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->isHidden:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTable;->ifNotExists:Z

    return-void
.end method

.method public setOnCommitDrop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/ddl/CreateTable;->onCommitDrop:Z

    return-void
.end method

.method public setOnCommitTruncate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/ddl/CreateTable;->onCommitTruncate:Z

    return-void
.end method

.method public setPersistData(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    :cond_0
    return-void
.end method

.method public setPersistIndexes(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    return-void
.end method

.method public setQuery(Lorg/h2/command/dml/Query;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setSortedInsertMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTable;->sortedInsertMode:Z

    return-void
.end method

.method public setTableEngine(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-object p1, v0, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    return-void
.end method

.method public setTableEngineParams(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-object p1, v0, Lorg/h2/command/ddl/CreateTableData;->tableEngineParams:Ljava/util/ArrayList;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-object p1, v0, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setTemporary(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    return-void
.end method

.method public update()I
    .locals 12

    iget-boolean v0, p0, Lorg/h2/command/ddl/DefineCommand;->transactional:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean v3, v2, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    :cond_1
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-boolean v4, v2, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    if-eqz v4, :cond_2

    iget-boolean v2, v2, Lorg/h2/command/ddl/CreateTableData;->globalTemporary:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v4}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    :cond_3
    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v6, v6, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateTable;->ifNotExists:Z

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v0, v0, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    const v1, 0xa475

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lorg/h2/command/Prepared;->prepare()V

    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v4, v4, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lorg/h2/command/ddl/CreateTable;->generateColumnsFromQuery()V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v4, v4, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v5}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v5

    if-ne v4, v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v0, 0x520a

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_1
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v4, v4, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/Column;

    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_9

    aget-object v9, v6, v8

    invoke-virtual {v5}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v9, v9, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v5, v3}, Lorg/h2/table/Column;->setNullable(Z)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v5

    iput v5, v4, Lorg/h2/command/ddl/CreateTableData;->id:I

    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-boolean v5, p0, Lorg/h2/command/Prepared;->create:Z

    iput-boolean v5, v4, Lorg/h2/command/ddl/CreateTableData;->create:Z

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iput-object v5, v4, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    invoke-virtual {v4, v5}, Lorg/h2/schema/Schema;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object v4

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v6, v6, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/table/Column;

    invoke-virtual {v7}, Lorg/h2/table/Column;->isAutoIncrement()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v8

    iget-object v9, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v10

    iget-object v11, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-boolean v11, v11, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    invoke-virtual {v7, v9, v10, v8, v11}, Lorg/h2/table/Column;->convertAutoIncrementToSequence(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V

    iget-object v8, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v8}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/engine/Database;->getCluster()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\'\'"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_4

    :cond_d
    const-string v0, "CLUSTERING && auto-increment columns"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_4
    invoke-virtual {v7}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->comment:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/h2/engine/DbObjectBase;->setComment(Ljava/lang/String;)V

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lorg/h2/command/ddl/CreateTable;->onCommitDrop:Z

    if-eqz v2, :cond_10

    invoke-virtual {v4, v1}, Lorg/h2/table/Table;->setOnCommitDrop(Z)V

    :cond_10
    iget-boolean v2, p0, Lorg/h2/command/ddl/CreateTable;->onCommitTruncate:Z

    if-eqz v2, :cond_11

    invoke-virtual {v4, v1}, Lorg/h2/table/Table;->setOnCommitTruncate(Z)V

    :cond_11
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->addLocalTempTable(Lorg/h2/table/Table;)V

    goto :goto_5

    :cond_12
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v4}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_5
    :try_start_0
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v2, v2, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    iget-object v7, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7}, Lorg/h2/table/Column;->prepareExpression(Lorg/h2/engine/Session;)V

    goto :goto_6

    :catch_0
    move-exception v2

    goto/16 :goto_b

    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/schema/Sequence;

    invoke-virtual {v4, v5}, Lorg/h2/table/Table;->addSequence(Lorg/h2/schema/Sequence;)V

    goto :goto_7

    :cond_14
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->constraintCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/command/ddl/DefineCommand;

    iget-boolean v6, p0, Lorg/h2/command/ddl/DefineCommand;->transactional:Z

    invoke-virtual {v5, v6}, Lorg/h2/command/ddl/DefineCommand;->setTransactional(Z)V

    invoke-virtual {v5}, Lorg/h2/command/Prepared;->update()I

    goto :goto_8

    :cond_15
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->isUndoLogEnabled()Z

    move-result v2
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v3}, Lorg/h2/engine/Session;->setUndoLogEnabled(Z)V

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    new-instance v5, Lorg/h2/command/dml/Insert;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-direct {v5, v6}, Lorg/h2/command/dml/Insert;-><init>(Lorg/h2/engine/Session;)V

    iget-boolean v6, p0, Lorg/h2/command/ddl/CreateTable;->sortedInsertMode:Z

    invoke-virtual {v5, v6}, Lorg/h2/command/dml/Insert;->setSortedInsertMode(Z)V

    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v5, v6}, Lorg/h2/command/dml/Insert;->setQuery(Lorg/h2/command/dml/Query;)V

    invoke-virtual {v5, v4}, Lorg/h2/command/dml/Insert;->setTable(Lorg/h2/table/Table;)V

    invoke-virtual {v5, v1}, Lorg/h2/command/dml/Insert;->setInsertFromSelect(Z)V

    invoke-virtual {v5}, Lorg/h2/command/dml/Insert;->prepare()V

    invoke-virtual {v5}, Lorg/h2/command/dml/Insert;->update()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v2}, Lorg/h2/engine/Session;->setUndoLogEnabled(Z)V

    goto :goto_9

    :catchall_0
    move-exception v3

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v2}, Lorg/h2/engine/Session;->setUndoLogEnabled(Z)V

    throw v3

    :cond_16
    :goto_9
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v4, v2}, Lorg/h2/table/Table;->addDependencies(Ljava/util/HashSet;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/engine/DbObject;

    if-ne v5, v4, :cond_18

    goto :goto_a

    :cond_18
    invoke-interface {v5}, Lorg/h2/engine/DbObject;->getType()I

    move-result v6

    if-nez v6, :cond_17

    instance-of v6, v5, Lorg/h2/table/Table;

    if-eqz v6, :cond_17

    check-cast v5, Lorg/h2/table/Table;

    invoke-virtual {v5}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v6

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v7

    if-gt v6, v7, :cond_19

    goto :goto_a

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Table depends on another table with a higher ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", this is currently not supported, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "as it would prevent the database from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "being re-opened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xc3b4

    invoke-static {v3, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v2

    throw v2
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1a
    return v3

    :goto_b
    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkPowerOff()V

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v4}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    iget-boolean v0, p0, Lorg/h2/command/ddl/DefineCommand;->transactional:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    :cond_1b
    throw v2
.end method
