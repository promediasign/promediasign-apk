.class public Lcom/dropbox/core/v2/files/FolderMetadata;
.super Lcom/dropbox/core/v2/files/Metadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;
    }
.end annotation


# instance fields
.field protected final id:Ljava/lang/String;

.field protected final propertyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedFolderId:Ljava/lang/String;

.field protected final sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/FolderSharingInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/FolderSharingInfo;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/dropbox/core/v2/files/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x1

    if-lt p1, p3, :cond_4

    iput-object p2, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    if-eqz p6, :cond_1

    const-string p1, "[-_0-9a-zA-Z:]+"

    invoke-static {p1, p6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p6, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    iput-object p7, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    if-eqz p8, :cond_3

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/fileproperties/PropertyGroup;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'propertyGroups\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput-object p8, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'id\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'id\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v2, :cond_b

    check-cast p1, Lcom/dropbox/core/v2/files/FolderMetadata;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/Metadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    if-eq v2, v3, :cond_8

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/FolderSharingInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    if-eq v2, p1, :cond_a

    if-eqz v2, :cond_9

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_0
    return v0

    :cond_b
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/Metadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPathDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

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

    invoke-super {p0}, Lcom/dropbox/core/v2/files/Metadata;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
