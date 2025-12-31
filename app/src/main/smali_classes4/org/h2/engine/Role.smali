.class public Lorg/h2/engine/Role;
.super Lorg/h2/engine/RightOwner;
.source "SourceFile"


# instance fields
.field private final system:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/h2/engine/RightOwner;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    iput-boolean p4, p0, Lorg/h2/engine/Role;->system:Z

    return-void
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    return-void
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/engine/Role;->getCreateSQL(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQL(Z)Ljava/lang/String;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lorg/h2/engine/Role;->system:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE ROLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "IF NOT EXISTS "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/User;

    invoke-virtual {v1, p0}, Lorg/h2/engine/RightOwner;->getRightForRole(Lorg/h2/engine/Role;)Lorg/h2/engine/Right;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRoles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Role;

    invoke-virtual {v1, p0}, Lorg/h2/engine/RightOwner;->getRightForRole(Lorg/h2/engine/Role;)Lorg/h2/engine/Right;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Right;

    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v2

    if-ne v2, p0, :cond_4

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method
