.class public Lsk/mimac/slideshow/http/page/GrabberFormPage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final cloudProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;",
            ">;"
        }
    .end annotation
.end field

.field private grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    invoke-static {}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->createAllProviders()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->cloudProviders:Ljava/util/List;

    new-instance p1, Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-direct {p1}, Lsk/mimac/slideshow/database/entity/GrabberData;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    return-void
.end method

.method private formatRefreshRate()Ljava/lang/String;
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->GRABBER_REFRESH_RATE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0xe10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v3, v1, 0xe10

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v4, v2, 0x3c

    add-int/2addr v4, v3

    sub-int/2addr v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "h "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-gtz v2, :cond_2

    if-lez v0, :cond_3

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCloudProviders()V
    .locals 8

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->cloudProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->isAssociatedWithUser()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Folders"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->listFolders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ContainsUser"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    sget-object v2, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Error occurred during connection with cloud provider"

    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "cloud_grabber_error"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_ROOT_"

    invoke-virtual {p0, v2, v1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processDelete(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/database/dao/AbstractDao;->delete(J)V

    const-string p1, "entry_deleted"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t delete grabber data from DB"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "database_error"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_ROOT_"

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processDownload(Ljava/lang/String;)V
    .locals 3

    const-string v0, "_ROOT_"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/downloader/FileGrabber;->runOne(Ljava/lang/Long;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFilesFailed()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFullString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFullString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<br>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "file_download_unsuccessful"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t ger grabber data from DB"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "database_error"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private processEdit(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getById(J)Lsk/mimac/slideshow/database/entity/GrabberData;

    move-result-object v1

    iput-object v1, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webdav://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ":"

    const-string v6, "url"

    if-eqz v1, :cond_0

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v7, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v16, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v12

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v15}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    aget-object v2, v1, v2

    const-string v5, "username1"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v3, "password1"

    aget-object v1, v1, v4

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v7, "sftp://"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v7, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v9

    if-lez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    const-string v9, ""

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "server_folder"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    aget-object v2, v1, v2

    const-string v5, "username2"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    aget-object v1, v1, v4

    invoke-static {v1}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPasswordWithHashBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "password2"

    :goto_1
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder2"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder3"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder4"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder5"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private processFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "fileName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "gdrive://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "dropbox://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "webdav"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v3, "sftp"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->ALLOW_UNSUPPORTED_FILE_TYPES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "unsupported_extension"

    :goto_0
    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "file_name_empty"

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private processGet()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "update"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processEdit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private processPost()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "_ROOT_"

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v4, "delete"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processDelete(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v4, "download"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processDownload(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->cloudProviders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;

    invoke-virtual {v6}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getName()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    iget-object v9, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_logout"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "Show"

    if-eqz v9, :cond_5

    :try_start_1
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->logoutUser()V

    const-string v3, "cloud_grabber_logout_success"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v8, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_login"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v6}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->loginUser()V

    const-string v3, "cloud_grabber_login_success"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v8, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;
    :try_end_2
    .catch Lsk/mimac/slideshow/exception/BrowserNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    sget-object v4, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Browser not found in Android during cloud grabber login"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "browser_not_found"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    return-void

    :goto_3
    sget-object v4, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Error occurred during connection with cloud provider"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "cloud_grabber_error"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->hasAnyErrors()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "webdav"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "webdavShow"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "sftp"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "sftpShow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getById(J)Lsk/mimac/slideshow/database/entity/GrabberData;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    :cond_9
    return-void

    :cond_a
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder2"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder3"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder4"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder5"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    new-instance v1, Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3, v0}, Lsk/mimac/slideshow/database/entity/GrabberData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v0

    if-eqz v4, :cond_d

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/GrabberDao;->update(Lsk/mimac/slideshow/database/entity/GrabberData;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/GrabberDao;->create(Lsk/mimac/slideshow/database/entity/GrabberData;)V

    :goto_4
    const-string v0, "entry_added"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private processSftp(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "username2"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 12
    .line 13
    const-string v3, "password2"

    .line 14
    .line 15
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 22
    .line 23
    const-string v5, "server_folder"

    .line 24
    .line 25
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    :cond_0
    const-string v6, "username_empty"

    .line 40
    .line 41
    invoke-static {v6}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p0, v1, v6}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    :cond_2
    const-string v1, "password_empty"

    .line 57
    .line 58
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v3, v1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    :cond_4
    const-string v1, "server_folder_empty"

    .line 74
    .line 75
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p0, v5, v1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->hasAnyErrors()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "sftp://"

    .line 92
    .line 93
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v1, Ljava/net/URI;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const-string v3, ":"

    .line 114
    .line 115
    invoke-static {v0, v3}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v2}, Lsk/mimac/slideshow/utils/CryptUtils;->encryptPasswordWithHashBase64(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    const-string p1, "/"

    .line 139
    .line 140
    invoke-static {p1, v4}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    const/4 v11, 0x0

    .line 145
    const/4 v12, 0x0

    .line 146
    move-object v5, v1

    .line 147
    invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1
.end method

.method private processUrl()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "dropbox://"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v3, "url2"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v4, "/"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v4, "webdav"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "url_invalid"

    if-eqz v3, :cond_5

    invoke-static {v0}, Lsk/mimac/slideshow/utils/UrlUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processWebDav(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    :goto_1
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v1, v2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "sftp"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processSftp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    const-string v3, "gdrive://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0}, Lsk/mimac/slideshow/utils/UrlUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    :goto_3
    const-string v2, "url_empty"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    :goto_4
    return-object v0
.end method

.method private processWebDav(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "username1"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 12
    .line 13
    const-string v2, "password1"

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    :cond_0
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    :cond_1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v10, Ljava/net/URI;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v2, ":"

    .line 48
    .line 49
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    move-object v2, v10

    .line 68
    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_2
    const-string v0, "webdav://"

    .line 76
    .line 77
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/grabber_form"

    return-object v0
.end method

.method public process()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processPost()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processGet()V

    :goto_0
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->initCloudProviders()V

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "grabberRefreshRate"

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->formatRefreshRate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "grabberData"

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "grabberDatas"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "grabberStatistics"

    invoke-static {}, Lsk/mimac/slideshow/downloader/FileGrabber;->getLastStatistics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "allFolders"

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-static {v2}, Lsk/mimac/slideshow/utils/FileUtils2;->listDirectoriesNested(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t show grabber page"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
