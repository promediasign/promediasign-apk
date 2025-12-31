.class public abstract Lorg/h2/engine/RightOwner;
.super Lorg/h2/engine/DbObjectBase;
.source "SourceFile"


# instance fields
.field private grantedRights:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/engine/DbObject;",
            "Lorg/h2/engine/Right;",
            ">;"
        }
    .end annotation
.end field

.field private grantedRoles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/engine/Role;",
            "Lorg/h2/engine/Right;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/engine/DbObjectBase;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getRightForObject(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Right;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Right;

    return-object p1
.end method

.method public getRightForRole(Lorg/h2/engine/Role;)Lorg/h2/engine/Right;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Right;

    return-object p1
.end method

.method public grantRight(Lorg/h2/engine/DbObject;Lorg/h2/engine/Right;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public grantRole(Lorg/h2/engine/Role;Lorg/h2/engine/Right;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isRightGrantedRecursive(Lorg/h2/table/Table;I)Z
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Right;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Right;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/RightOwner;

    invoke-virtual {v2, p1, p2}, Lorg/h2/engine/RightOwner;->isRightGrantedRecursive(Lorg/h2/table/Table;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public isRoleGranted(Lorg/h2/engine/Role;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Role;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {v2, p1}, Lorg/h2/engine/RightOwner;->isRoleGranted(Lorg/h2/engine/Role;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public revokeRight(Lorg/h2/engine/DbObject;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public revokeRole(Lorg/h2/engine/Role;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Right;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    :cond_2
    return-void
.end method
