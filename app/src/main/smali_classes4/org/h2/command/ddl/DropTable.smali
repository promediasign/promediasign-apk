.class public Lorg/h2/command/ddl/DropTable;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private dropAction:I

.field private ifExists:Z

.field private next:Lorg/h2/command/ddl/DropTable;

.field private table:Lorg/h2/table/Table;

.field private tableName:Ljava/lang/String;


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

    iput p1, p0, Lorg/h2/command/ddl/DropTable;->dropAction:I

    return-void
.end method

.method private executeDrop()V
    .locals 3

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->setModified()V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-eqz v0, :cond_1

    invoke-direct {v0}, Lorg/h2/command/ddl/DropTable;->executeDrop()V

    :cond_1
    return-void
.end method

.method private prepareDrop()V
    .locals 4

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/ddl/DropTable;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0xa476

    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->canDrop()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/h2/command/ddl/DropTable;->dropAction:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lorg/h2/util/StatementBuilder;

    invoke-direct {v1}, Lorg/h2/util/StatementBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/TableView;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15ffb

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    :goto_1
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-eqz v0, :cond_4

    invoke-direct {v0}, Lorg/h2/command/ddl/DropTable;->prepareDrop()V

    :cond_4
    return-void

    :cond_5
    const v0, 0x16006

    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public addNextDropTable(Lorg/h2/command/ddl/DropTable;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/DropTable;->addNextDropTable(Lorg/h2/command/ddl/DropTable;)V

    :goto_0
    return-void
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public setDropAction(I)V
    .locals 1

    iput p1, p0, Lorg/h2/command/ddl/DropTable;->dropAction:I

    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/DropTable;->setDropAction(I)V

    :cond_0
    return-void
.end method

.method public setIfExists(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/h2/command/ddl/DropTable;->ifExists:Z

    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/DropTable;->setIfExists(Z)V

    :cond_0
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 2

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    invoke-direct {p0}, Lorg/h2/command/ddl/DropTable;->prepareDrop()V

    invoke-direct {p0}, Lorg/h2/command/ddl/DropTable;->executeDrop()V

    const/4 v0, 0x0

    return v0
.end method
