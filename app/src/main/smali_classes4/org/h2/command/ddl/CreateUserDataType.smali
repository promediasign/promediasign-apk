.class public Lorg/h2/command/ddl/CreateUserDataType;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SourceFile"


# instance fields
.field private column:Lorg/h2/table/Column;

.field private ifNotExists:Z

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method

.method public setColumn(Lorg/h2/table/Column;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateUserDataType;->column:Lorg/h2/table/Column;

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateUserDataType;->ifNotExists:Z

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/CreateUserDataType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 5

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    iget-object v1, p0, Lorg/h2/command/ddl/CreateUserDataType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findUserDataType(Ljava/lang/String;)Lorg/h2/engine/UserDataType;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x16007

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateUserDataType;->ifNotExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/CreateUserDataType;->typeName:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUserDataType;->typeName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lorg/h2/value/DataType;->hidden:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getFirstUserTable()Lorg/h2/table/Table;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/command/ddl/CreateUserDataType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/h2/command/ddl/CreateUserDataType;->typeName:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v1

    new-instance v3, Lorg/h2/engine/UserDataType;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateUserDataType;->typeName:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v4}, Lorg/h2/engine/UserDataType;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;)V

    iget-object v1, p0, Lorg/h2/command/ddl/CreateUserDataType;->column:Lorg/h2/table/Column;

    invoke-virtual {v3, v1}, Lorg/h2/engine/UserDataType;->setColumn(Lorg/h2/table/Column;)V

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v3}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    return v2
.end method
