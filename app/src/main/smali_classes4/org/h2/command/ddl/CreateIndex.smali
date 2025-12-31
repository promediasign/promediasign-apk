.class public Lorg/h2/command/ddl/CreateIndex;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private affinity:Z

.field private comment:Ljava/lang/String;

.field private hash:Z

.field private ifNotExists:Z

.field private ifTableExists:Z

.field private indexColumns:[Lorg/h2/table/IndexColumn;

.field private indexName:Ljava/lang/String;

.field private primaryKey:Z

.field private spatial:Z

.field private tableName:Ljava/lang/String;

.field private unique:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public setAffinity(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateIndex;->affinity:Z

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateIndex;->comment:Ljava/lang/String;

    return-void
.end method

.method public setHash(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateIndex;->hash:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateIndex;->ifNotExists:Z

    return-void
.end method

.method public setIfTableExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateIndex;->ifTableExists:Z

    return-void
.end method

.method public setIndexColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateIndex;->indexName:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateIndex;->primaryKey:Z

    return-void
.end method

.method public setSpatial(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateIndex;->spatial:Z

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateIndex;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setUnique(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateIndex;->unique:Z

    return-void
.end method

.method public update()I
    .locals 13

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

    move-result v0

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateIndex;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v5

    const/4 v2, 0x0

    if-nez v5, :cond_2

    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateIndex;->ifTableExists:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const v0, 0xa476

    iget-object v1, p0, Lorg/h2/command/ddl/CreateIndex;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/ddl/CreateIndex;->indexName:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateIndex;->ifNotExists:Z

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const v0, 0xa47f

    iget-object v1, p0, Lorg/h2/command/ddl/CreateIndex;->indexName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v5, v4}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v3, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    invoke-virtual {v5}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v8

    iget-object v1, p0, Lorg/h2/command/ddl/CreateIndex;->indexName:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateIndex;->primaryKey:Z

    if-eqz v1, :cond_6

    invoke-virtual {v5}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const-string v4, "PRIMARY_KEY_"

    :goto_0
    invoke-virtual {v1, v3, v5, v4}, Lorg/h2/schema/Schema;->getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/ddl/CreateIndex;->indexName:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const-string v4, "INDEX_"

    goto :goto_0

    :cond_7
    :goto_1
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateIndex;->primaryKey:Z

    if-eqz v1, :cond_9

    invoke-virtual {v5}, Lorg/h2/table/Table;->findPrimaryKey()Lorg/h2/index/Index;

    move-result-object v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateIndex;->hash:Z

    invoke-static {v0, v1}, Lorg/h2/index/IndexType;->createPrimaryKey(ZZ)Lorg/h2/index/IndexType;

    move-result-object v0

    :goto_2
    move-object v10, v0

    goto :goto_3

    :cond_8
    const v0, 0x15fa1

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_9
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateIndex;->unique:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateIndex;->hash:Z

    invoke-static {v0, v1}, Lorg/h2/index/IndexType;->createUnique(ZZ)Lorg/h2/index/IndexType;

    move-result-object v0

    goto :goto_2

    :cond_a
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateIndex;->affinity:Z

    if-eqz v1, :cond_b

    invoke-static {}, Lorg/h2/index/IndexType;->createAffinity()Lorg/h2/index/IndexType;

    move-result-object v0

    goto :goto_2

    :cond_b
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateIndex;->hash:Z

    iget-boolean v3, p0, Lorg/h2/command/ddl/CreateIndex;->spatial:Z

    invoke-static {v0, v1, v3}, Lorg/h2/index/IndexType;->createNonUnique(ZZZ)Lorg/h2/index/IndexType;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/h2/command/ddl/CreateIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v0, v5}, Lorg/h2/table/IndexColumn;->mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v7, p0, Lorg/h2/command/ddl/CreateIndex;->indexName:Ljava/lang/String;

    iget-object v9, p0, Lorg/h2/command/ddl/CreateIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    iget-boolean v11, p0, Lorg/h2/command/Prepared;->create:Z

    iget-object v12, p0, Lorg/h2/command/ddl/CreateIndex;->comment:Ljava/lang/String;

    invoke-virtual/range {v5 .. v12}, Lorg/h2/table/Table;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    return v2
.end method
