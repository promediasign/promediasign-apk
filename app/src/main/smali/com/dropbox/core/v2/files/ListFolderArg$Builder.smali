.class public Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ListFolderArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected includeDeleted:Z

.field protected includeHasExplicitSharedMembers:Z

.field protected includeMediaInfo:Z

.field protected includeMountedFolders:Z

.field protected includeNonDownloadableFiles:Z

.field protected includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

.field protected limit:Ljava/lang/Long;

.field protected final path:Ljava/lang/String;

.field protected recursive:Z

.field protected sharedLink:Lcom/dropbox/core/v2/files/SharedLink;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->path:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMountedFolders:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->limit:Ljava/lang/Long;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeNonDownloadableFiles:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'path\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'path\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/ListFolderArg;
    .locals 12

    new-instance v11, Lcom/dropbox/core/v2/files/ListFolderArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    iget-boolean v6, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMountedFolders:Z

    iget-object v7, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->limit:Ljava/lang/Long;

    iget-object v8, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    iget-object v9, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-boolean v10, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeNonDownloadableFiles:Z

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/SharedLink;Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;Z)V

    return-object v11
.end method

.method public withIncludeNonDownloadableFiles(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeNonDownloadableFiles:Z

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is larger than 2000L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->limit:Ljava/lang/Long;

    return-object p0
.end method

.method public withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-object p0
.end method
