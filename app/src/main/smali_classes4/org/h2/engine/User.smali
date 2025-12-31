.class public Lorg/h2/engine/User;
.super Lorg/h2/engine/RightOwner;
.source "SourceFile"


# instance fields
.field private admin:Z

.field private passwordHash:[B

.field private salt:[B

.field private final systemUser:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/h2/engine/RightOwner;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    iput-boolean p4, p0, Lorg/h2/engine/User;->systemUser:Z

    return-void
.end method


# virtual methods
.method public checkAdmin()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/User;->admin:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15fb8

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkOwnsNoSchemas()V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/Schema;

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getOwner()Lorg/h2/engine/User;

    move-result-object v2

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15ffb

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public checkRight(Lorg/h2/table/Table;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/User;->hasRight(Lorg/h2/table/Table;I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const p2, 0x15ff0

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public checkSchemaAdmin()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/h2/engine/User;->hasRight(Lorg/h2/table/Table;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15fb8

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getOwner()Lorg/h2/engine/User;

    move-result-object v3

    if-ne v3, p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/h2/engine/User;->getCreateSQL(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQL(Z)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE USER IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " COMMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, " SALT \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/engine/User;->salt:[B

    invoke-static {p1}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' HASH \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/engine/User;->passwordHash:[B

    invoke-static {p1}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, " PASSWORD \'\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-boolean p1, p0, Lorg/h2/engine/User;->admin:Z

    if-eqz p1, :cond_2

    const-string p1, " ADMIN"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
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

    const/4 v0, 0x2

    return v0
.end method

.method public hasRight(Lorg/h2/table/Table;I)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iget-boolean v1, p0, Lorg/h2/engine/User;->systemUser:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/h2/table/Table;->checkWritingAllowed()V

    :cond_0
    iget-boolean v1, p0, Lorg/h2/engine/User;->admin:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getPublicRole()Lorg/h2/engine/Role;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/h2/engine/RightOwner;->isRightGrantedRecursive(Lorg/h2/table/Table;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    instance-of v1, p1, Lorg/h2/table/MetaTable;

    if-nez v1, :cond_9

    instance-of v1, p1, Lorg/h2/table/RangeTable;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_7

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Lorg/h2/engine/User;->hasRight(Lorg/h2/table/Table;I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v1

    sget-object v2, Lorg/h2/table/TableType;->VIEW:Lorg/h2/table/TableType;

    if-ne v2, v1, :cond_5

    move-object v1, p1

    check-cast v1, Lorg/h2/table/TableView;

    invoke-virtual {v1}, Lorg/h2/table/TableView;->getOwner()Lorg/h2/engine/User;

    move-result-object v1

    if-ne v1, p0, :cond_6

    return v0

    :cond_5
    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/RightOwner;->isRightGrantedRecursive(Lorg/h2/table/Table;I)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1

    :cond_9
    :goto_0
    return v0
.end method

.method public isAdmin()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/User;->admin:Z

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

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

    check-cast v1, Lorg/h2/engine/Right;

    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/engine/User;->salt:[B

    iget-object v0, p0, Lorg/h2/engine/User;->passwordHash:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iput-object p1, p0, Lorg/h2/engine/User;->passwordHash:[B

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method

.method public setAdmin(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/User;->admin:Z

    return-void
.end method

.method public setSaltAndHash([B[B)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/User;->salt:[B

    iput-object p2, p0, Lorg/h2/engine/User;->passwordHash:[B

    return-void
.end method

.method public setUserPasswordHash([B)V
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/h2/engine/User;->passwordHash:[B

    iput-object p1, p0, Lorg/h2/engine/User;->salt:[B

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/h2/engine/User;->salt:[B

    invoke-static {v0}, Lorg/h2/util/MathUtils;->randomBytes([B)V

    iget-object v0, p0, Lorg/h2/engine/User;->salt:[B

    invoke-static {p1, v0}, Lorg/h2/security/SHA256;->getHashWithSalt([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/User;->passwordHash:[B

    :cond_1
    :goto_0
    return-void
.end method

.method public validateUserPasswordHash([B)Z
    .locals 1

    array-length v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/User;->passwordHash:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [C

    invoke-static {p1, v0}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/User;->salt:[B

    invoke-static {p1, v0}, Lorg/h2/security/SHA256;->getHashWithSalt([B[B)[B

    move-result-object p1

    iget-object v0, p0, Lorg/h2/engine/User;->passwordHash:[B

    invoke-static {p1, v0}, Lorg/h2/util/Utils;->compareSecure([B[B)Z

    move-result p1

    return p1
.end method
