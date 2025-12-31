.class public Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method public download(Lcom/dropbox/core/v2/files/DownloadArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/DownloadArg;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/download"

    sget-object v6, Lcom/dropbox/core/v2/files/DownloadArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DownloadArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/files/DownloadError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DownloadError$Serializer;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p1
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/dropbox/core/v2/files/DownloadErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/files/DownloadError;

    const-string v2, "2/files/download"

    invoke-direct {p2, v2, v0, v1, p1}, Lcom/dropbox/core/v2/files/DownloadErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DownloadError;)V

    throw p2
.end method

.method public download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/dropbox/core/v2/files/DownloadArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DownloadArg;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Lcom/dropbox/core/v2/files/DownloadArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p1

    return-object p1
.end method

.method public listFolder(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder"

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderError$Serializer;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderError;

    const-string v3, "2/files/list_folder"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/files/ListFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderError;)V

    throw v0
.end method

.method public listFolderBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/ListFolderBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V

    return-object v0
.end method

.method public listFolderContinue(Lcom/dropbox/core/v2/files/ListFolderContinueArg;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder/continue"

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    const-string v3, "2/files/list_folder/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderContinueError;)V

    throw v0
.end method

.method public listFolderContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 1

    .line 2
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderContinueArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderContinue(Lcom/dropbox/core/v2/files/ListFolderContinueArg;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object p1

    return-object p1
.end method
