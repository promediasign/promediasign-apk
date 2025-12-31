.class public Lorg/h2/command/ddl/DropIndex;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private ifExists:Z

.field private indexName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public setIfExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/DropIndex;->ifExists:Z

    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/DropIndex;->indexName:Ljava/lang/String;

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

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/DropIndex;->indexName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/ddl/DropIndex;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const v0, 0xa480

    iget-object v1, p0, Lorg/h2/command/ddl/DropIndex;->indexName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-interface {v1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    invoke-interface {v1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    invoke-virtual {v3}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/constraint/Constraint;

    invoke-virtual {v6, v1}, Lorg/h2/constraint/Constraint;->usesIndex(Lorg/h2/index/Index;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v4, "PRIMARY KEY"

    invoke-virtual {v6}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v6

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/h2/command/ddl/DropIndex;->indexName:Ljava/lang/String;

    invoke-virtual {v6}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fe5

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->setModified()V

    if-eqz v4, :cond_5

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v4}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v1}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_2
    return v2
.end method
