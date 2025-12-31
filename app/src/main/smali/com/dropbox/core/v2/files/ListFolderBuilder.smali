.class public Lcom/dropbox/core/v2/files/ListFolderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_builder"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_client"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->build()Lcom/dropbox/core/v2/files/ListFolderArg;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolder(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeNonDownloadableFiles(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withIncludeNonDownloadableFiles(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method

.method public withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method
