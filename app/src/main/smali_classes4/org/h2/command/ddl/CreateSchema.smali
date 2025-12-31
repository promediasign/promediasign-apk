.class public Lorg/h2/command/ddl/CreateSchema;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SourceFile"


# instance fields
.field private authorization:Ljava/lang/String;

.field private ifNotExists:Z

.field private schemaName:Ljava/lang/String;

.field private tableEngineParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public setAuthorization(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateSchema;->authorization:Ljava/lang/String;

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateSchema;->ifNotExists:Z

    return-void
.end method

.method public setSchemaName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateSchema;->schemaName:Ljava/lang/String;

    return-void
.end method

.method public setTableEngineParams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/ddl/CreateSchema;->tableEngineParams:Ljava/util/ArrayList;

    return-void
.end method

.method public update()I
    .locals 9

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkSchemaAdmin()V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/CreateSchema;->authorization:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v5

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v5}, Lorg/h2/engine/User;->checkSchemaAdmin()V

    :cond_0
    iget-object v1, p0, Lorg/h2/command/ddl/CreateSchema;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateSchema;->ifNotExists:Z

    if-eqz v0, :cond_1

    return v7

    :cond_1
    const v0, 0x15fde

    iget-object v1, p0, Lorg/h2/command/ddl/CreateSchema;->schemaName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v3

    new-instance v8, Lorg/h2/schema/Schema;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateSchema;->schemaName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lorg/h2/schema/Schema;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Lorg/h2/engine/User;Z)V

    iget-object v1, p0, Lorg/h2/command/ddl/CreateSchema;->tableEngineParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Lorg/h2/schema/Schema;->setTableEngineParams(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v8}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    return v7
.end method
