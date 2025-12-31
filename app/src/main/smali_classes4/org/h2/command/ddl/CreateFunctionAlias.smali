.class public Lorg/h2/command/ddl/CreateFunctionAlias;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private aliasName:Ljava/lang/String;

.field private bufferResultSetToLocalTemp:Z

.field private deterministic:Z

.field private force:Z

.field private ifNotExists:Z

.field private javaClassMethod:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->bufferResultSetToLocalTemp:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public setAliasName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->aliasName:Ljava/lang/String;

    return-void
.end method

.method public setBufferResultSetToLocalTemp(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->bufferResultSetToLocalTemp:Z

    return-void
.end method

.method public setDeterministic(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->deterministic:Z

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->force:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->ifNotExists:Z

    return-void
.end method

.method public setJavaClassMethod(Ljava/lang/String;)V
    .locals 2

    const-string v0, " "

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->javaClassMethod:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->source:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 7

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

    iget-object v2, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->ifNotExists:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x15fdc

    iget-object v1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->aliasName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v2

    iget-object v1, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->javaClassMethod:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->aliasName:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->javaClassMethod:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->force:Z

    iget-boolean v6, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->bufferResultSetToLocalTemp:Z

    invoke-static/range {v1 .. v6}, Lorg/h2/engine/FunctionAlias;->newInstance(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;ZZ)Lorg/h2/engine/FunctionAlias;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->aliasName:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->source:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->force:Z

    iget-boolean v6, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->bufferResultSetToLocalTemp:Z

    invoke-static/range {v1 .. v6}, Lorg/h2/engine/FunctionAlias;->newInstanceFromSource(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;ZZ)Lorg/h2/engine/FunctionAlias;

    move-result-object v1

    :goto_0
    iget-boolean v2, p0, Lorg/h2/command/ddl/CreateFunctionAlias;->deterministic:Z

    invoke-virtual {v1, v2}, Lorg/h2/engine/FunctionAlias;->setDeterministic(Z)V

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method
