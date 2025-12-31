.class public Lcom/dropbox/core/v2/files/FileMetadata;
.super Lcom/dropbox/core/v2/files/Metadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/FileMetadata$Serializer;
    }
.end annotation


# instance fields
.field protected final clientModified:Ljava/util/Date;

.field protected final contentHash:Ljava/lang/String;

.field protected final exportInfo:Lcom/dropbox/core/v2/files/ExportInfo;

.field protected final fileLockInfo:Lcom/dropbox/core/v2/files/FileLockMetadata;

.field protected final hasExplicitSharedMembers:Ljava/lang/Boolean;

.field protected final id:Ljava/lang/String;

.field protected final isDownloadable:Z

.field protected final mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

.field protected final propertyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected final rev:Ljava/lang/String;

.field protected final serverModified:Ljava/util/Date;

.field protected final sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

.field protected final size:J

.field protected final symlinkInfo:Lcom/dropbox/core/v2/files/SymlinkInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/MediaInfo;Lcom/dropbox/core/v2/files/SymlinkInfo;Lcom/dropbox/core/v2/files/FileSharingInfo;ZLcom/dropbox/core/v2/files/ExportInfo;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dropbox/core/v2/files/FileLockMetadata;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/MediaInfo;",
            "Lcom/dropbox/core/v2/files/SymlinkInfo;",
            "Lcom/dropbox/core/v2/files/FileSharingInfo;",
            "Z",
            "Lcom/dropbox/core/v2/files/ExportInfo;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/FileLockMetadata;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object/from16 v3, p16

    move-object/from16 v4, p18

    move-object v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/dropbox/core/v2/files/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_a

    iput-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    if-eqz p3, :cond_9

    invoke-static {p3}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    if-eqz p4, :cond_8

    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    if-eqz v2, :cond_7

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x9

    if-lt v1, v5, :cond_6

    const-string v1, "[0-9a-f]+"

    invoke-static {v1, p5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v2, v0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    move-wide v1, p6

    iput-wide v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->symlinkInfo:Lcom/dropbox/core/v2/files/SymlinkInfo;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->isDownloadable:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->exportInfo:Lcom/dropbox/core/v2/files/ExportInfo;

    if-eqz v3, :cond_1

    invoke-interface/range {p16 .. p16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/core/v2/fileproperties/PropertyGroup;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'propertyGroups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object v3, v0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    invoke-virtual/range {p18 .. p18}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_3

    invoke-virtual/range {p18 .. p18}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'contentHash\' is longer than 64"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'contentHash\' is shorter than 64"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    iput-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->fileLockInfo:Lcom/dropbox/core/v2/files/FileLockMetadata;

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'rev\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'rev\' is shorter than 9"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'rev\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'serverModified\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'clientModified\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'id\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'id\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

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

    if-eqz v2, :cond_13

    check-cast p1, Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/Metadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_6
    iget-wide v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_11

    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    if-eq v2, v3, :cond_a

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->symlinkInfo:Lcom/dropbox/core/v2/files/SymlinkInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->symlinkInfo:Lcom/dropbox/core/v2/files/SymlinkInfo;

    if-eq v2, v3, :cond_b

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/SymlinkInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    if-eq v2, v3, :cond_c

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/FileSharingInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_c
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->isDownloadable:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->isDownloadable:Z

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->exportInfo:Lcom/dropbox/core/v2/files/ExportInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->exportInfo:Lcom/dropbox/core/v2/files/ExportInfo;

    if-eq v2, v3, :cond_d

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/ExportInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_d
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    if-eq v2, v3, :cond_e

    if-eqz v2, :cond_11

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_e
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_f

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    if-eq v2, v3, :cond_10

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->fileLockInfo:Lcom/dropbox/core/v2/files/FileLockMetadata;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->fileLockInfo:Lcom/dropbox/core/v2/files/FileLockMetadata;

    if-eq v2, p1, :cond_12

    if-eqz v2, :cond_11

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/FileLockMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v0, 0x0

    :cond_12
    :goto_0
    return v0

    :cond_13
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

.method public getServerModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    iget-object v3, v0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    iget-wide v5, v0, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    iget-object v7, v0, Lcom/dropbox/core/v2/files/FileMetadata;->symlinkInfo:Lcom/dropbox/core/v2/files/SymlinkInfo;

    iget-object v8, v0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    iget-boolean v9, v0, Lcom/dropbox/core/v2/files/FileMetadata;->isDownloadable:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, v0, Lcom/dropbox/core/v2/files/FileMetadata;->exportInfo:Lcom/dropbox/core/v2/files/ExportInfo;

    iget-object v11, v0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    iget-object v12, v0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    iget-object v13, v0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    iget-object v14, v0, Lcom/dropbox/core/v2/files/FileMetadata;->fileLockInfo:Lcom/dropbox/core/v2/files/FileLockMetadata;

    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/4 v1, 0x1

    aput-object v2, v15, v1

    const/4 v1, 0x2

    aput-object v3, v15, v1

    const/4 v1, 0x3

    aput-object v4, v15, v1

    const/4 v1, 0x4

    aput-object v5, v15, v1

    const/4 v1, 0x5

    aput-object v6, v15, v1

    const/4 v1, 0x6

    aput-object v7, v15, v1

    const/4 v1, 0x7

    aput-object v8, v15, v1

    const/16 v1, 0x8

    aput-object v9, v15, v1

    const/16 v1, 0x9

    aput-object v10, v15, v1

    const/16 v1, 0xa

    aput-object v11, v15, v1

    const/16 v1, 0xb

    aput-object v12, v15, v1

    const/16 v1, 0xc

    aput-object v13, v15, v1

    const/16 v1, 0xd

    aput-object v14, v15, v1

    invoke-static {v15}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-super/range {p0 .. p0}, Lcom/dropbox/core/v2/files/Metadata;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
