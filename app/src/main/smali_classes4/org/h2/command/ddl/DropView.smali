.class public Lorg/h2/command/ddl/DropView;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private dropAction:I

.field private ifExists:Z

.field private viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->dropRestrict:Z

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/command/ddl/DropView;->dropAction:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public setDropAction(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/ddl/DropView;->dropAction:I

    return-void
.end method

.method public setIfExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/DropView;->ifExists:Z

    return-void
.end method

.method public setViewName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 5

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    const v2, 0x15fb5

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/ddl/DropView;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    sget-object v3, Lorg/h2/table/TableType;->VIEW:Lorg/h2/table/TableType;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v4

    if-ne v3, v4, :cond_4

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v0, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    iget v2, p0, Lorg/h2/command/ddl/DropView;->dropAction:I

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/h2/table/Table;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/DbObject;

    instance-of v4, v3, Lorg/h2/table/TableView;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    invoke-interface {v3}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15ffb

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_4
    iget-object v0, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
