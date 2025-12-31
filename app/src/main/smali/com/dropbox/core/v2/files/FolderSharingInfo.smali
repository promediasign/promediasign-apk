.class public Lcom/dropbox/core/v2/files/FolderSharingInfo;
.super Lcom/dropbox/core/v2/files/SharingInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;
    }
.end annotation


# instance fields
.field protected final noAccess:Z

.field protected final parentSharedFolderId:Ljava/lang/String;

.field protected final sharedFolderId:Ljava/lang/String;

.field protected final traverseOnly:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/files/SharingInfo;-><init>(Z)V

    const-string p1, "[-_0-9a-zA-Z:]+"

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    if-eqz p3, :cond_3

    invoke-static {p1, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput-object p3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->traverseOnly:Z

    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->noAccess:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p1, Lcom/dropbox/core/v2/files/FolderSharingInfo;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->traverseOnly:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/FolderSharingInfo;->traverseOnly:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->noAccess:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/FolderSharingInfo;->noAccess:Z

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->traverseOnly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->noAccess:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0}, Lcom/dropbox/core/v2/files/SharingInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
