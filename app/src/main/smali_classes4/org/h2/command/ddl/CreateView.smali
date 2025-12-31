.class public Lorg/h2/command/ddl/CreateView;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private columnNames:[Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private force:Z

.field private ifNotExists:Z

.field private orReplace:Z

.field private select:Lorg/h2/command/dml/Query;

.field private selectSQL:Ljava/lang/String;

.field private viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public setColumnNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->columnNames:[Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->comment:Ljava/lang/String;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateView;->force:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateView;->ifNotExists:Z

    return-void
.end method

.method public setOrReplace(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateView;->orReplace:Z

    return-void
.end method

.method public setSelect(Lorg/h2/command/dml/Query;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->select:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setSelectSQL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->selectSQL:Ljava/lang/String;

    return-void
.end method

.method public setViewName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->viewName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 15

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/CreateView;->viewName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lorg/h2/command/ddl/CreateView;->ifNotExists:Z

    if-eqz v4, :cond_0

    return v2

    :cond_0
    iget-boolean v4, p0, Lorg/h2/command/ddl/CreateView;->orReplace:Z

    if-eqz v4, :cond_1

    sget-object v4, Lorg/h2/table/TableType;->VIEW:Lorg/h2/table/TableType;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v5

    if-ne v4, v5, :cond_1

    move-object v4, v1

    check-cast v4, Lorg/h2/table/TableView;

    goto :goto_0

    :cond_1
    const v0, 0x15fb6

    iget-object v1, p0, Lorg/h2/command/ddl/CreateView;->viewName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v4, v3

    :goto_0
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v7

    iget-object v5, p0, Lorg/h2/command/ddl/CreateView;->select:Lorg/h2/command/dml/Query;

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/h2/command/ddl/CreateView;->selectSQL:Ljava/lang/String;

    :goto_1
    move-object v9, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "parameters in views"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_2
    iget-object v5, p0, Lorg/h2/command/ddl/CreateView;->select:Lorg/h2/command/dml/Query;

    invoke-virtual {v5}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :goto_3
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v14

    monitor-enter v14

    if-nez v4, :cond_7

    :try_start_0
    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/h2/engine/Session;->setCurrentSchema(Lorg/h2/schema/Schema;)V

    iget-object v4, p0, Lorg/h2/command/ddl/CreateView;->columnNames:[Ljava/lang/String;

    if-eqz v4, :cond_6

    array-length v3, v4

    new-array v3, v3, [Lorg/h2/table/Column;

    const/4 v4, 0x0

    :goto_4
    iget-object v5, p0, Lorg/h2/command/ddl/CreateView;->columnNames:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_6

    new-instance v6, Lorg/h2/table/Column;

    aget-object v5, v5, v4

    const/4 v8, -0x1

    invoke-direct {v6, v5, v8}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_7

    :cond_6
    move-object v11, v3

    new-instance v4, Lorg/h2/table/TableView;

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    iget-object v8, p0, Lorg/h2/command/ddl/CreateView;->viewName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v5, v4

    move-object v12, v14

    invoke-direct/range {v5 .. v13}, Lorg/h2/table/TableView;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V

    goto :goto_5

    :cond_7
    iget-boolean v3, p0, Lorg/h2/command/ddl/CreateView;->force:Z

    invoke-virtual {v4, v9, v14, v2, v3}, Lorg/h2/table/TableView;->replace(Ljava/lang/String;Lorg/h2/engine/Session;ZZ)V

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->setModified()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    :try_start_1
    const-string v3, "PUBLIC"

    invoke-virtual {v0, v3}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/h2/engine/Session;->setCurrentSchema(Lorg/h2/schema/Schema;)V

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, p0, Lorg/h2/command/ddl/CreateView;->comment:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v4, v3}, Lorg/h2/engine/DbObjectBase;->setComment(Ljava/lang/String;)V

    :cond_8
    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v4}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v4}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_6
    return v2

    :catchall_1
    move-exception v0

    goto :goto_8

    :goto_7
    :try_start_2
    const-string v2, "PUBLIC"

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/h2/engine/Session;->setCurrentSchema(Lorg/h2/schema/Schema;)V

    throw v1

    :goto_8
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
