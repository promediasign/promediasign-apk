.class public Lorg/h2/engine/Right;
.super Lorg/h2/engine/DbObjectBase;
.source "SourceFile"


# static fields
.field public static final ALL:I = 0xf

.field public static final ALTER_ANY_SCHEMA:I = 0x10

.field public static final DELETE:I = 0x2

.field public static final INSERT:I = 0x4

.field public static final SELECT:I = 0x1

.field public static final UPDATE:I = 0x8


# instance fields
.field private grantedObject:Lorg/h2/engine/DbObject;

.field private grantedRight:I

.field private grantedRole:Lorg/h2/engine/Role;

.field private grantee:Lorg/h2/engine/RightOwner;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILorg/h2/engine/RightOwner;ILorg/h2/engine/DbObject;)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    const-string v0, ""

    .line 1
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/engine/DbObjectBase;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    iput-object p3, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    iput p4, p0, Lorg/h2/engine/Right;->grantedRight:I

    iput-object p5, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;ILorg/h2/engine/RightOwner;Lorg/h2/engine/Role;)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    const-string v0, "RIGHT_"

    .line 7
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    .line 8
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/engine/DbObjectBase;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    iput-object p3, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    iput-object p4, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    return-void
.end method

.method private static appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z
    .locals 0

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_1
    return p4
.end method

.method private getCreateSQLForCopy(Lorg/h2/engine/DbObject;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GRANT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Right;->getRights()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/h2/schema/Schema;

    if-eqz v1, :cond_1

    const-string v1, " ON SCHEMA "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lorg/h2/table/Table;

    if-eqz v1, :cond_2

    const-string v1, " ON "

    goto :goto_1

    :cond_2
    :goto_2
    const-string p1, " TO "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    return-void
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    invoke-direct {p0, v0}, Lorg/h2/engine/Right;->getCreateSQLForCopy(Lorg/h2/engine/DbObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/engine/Right;->getCreateSQLForCopy(Lorg/h2/engine/DbObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrantedObject()Lorg/h2/engine/DbObject;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    return-object v0
.end method

.method public getGrantedRole()Lorg/h2/engine/Role;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    return-object v0
.end method

.method public getGrantee()Lorg/h2/engine/DbObject;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    return-object v0
.end method

.method public getRightMask()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Right;->grantedRight:I

    return v0
.end method

.method public getRights()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const-string v3, "SELECT"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    move-result v1

    iget v2, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/4 v3, 0x2

    const-string v4, "DELETE"

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    move-result v1

    iget v2, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/4 v3, 0x4

    const-string v4, "INSERT"

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    move-result v1

    iget v2, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/16 v3, 0x10

    const-string v4, "ALTER ANY SCHEMA"

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    move-result v1

    iget v2, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/16 v3, 0x8

    const-string v4, "UPDATE"

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v1, v0}, Lorg/h2/engine/RightOwner;->revokeRole(Lorg/h2/engine/Role;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    iget-object v1, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    invoke-virtual {v0, v1}, Lorg/h2/engine/RightOwner;->revokeRight(Lorg/h2/engine/DbObject;)V

    :goto_0
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    iput-object p1, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    iput-object p1, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method

.method public setRightMask(I)V
    .locals 0

    iput p1, p0, Lorg/h2/engine/Right;->grantedRight:I

    return-void
.end method
