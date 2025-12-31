.class public Lorg/h2/command/ddl/DropUserDataType;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SourceFile"


# instance fields
.field private ifExists:Z

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

    const/16 v0, 0x2f

    return v0
.end method

.method public setIfExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/DropUserDataType;->ifExists:Z

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/DropUserDataType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 3

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

    iget-object v1, p0, Lorg/h2/command/ddl/DropUserDataType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findUserDataType(Ljava/lang/String;)Lorg/h2/engine/UserDataType;

    move-result-object v1

    if-nez v1, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/ddl/DropUserDataType;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x16008

    iget-object v1, p0, Lorg/h2/command/ddl/DropUserDataType;->typeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
