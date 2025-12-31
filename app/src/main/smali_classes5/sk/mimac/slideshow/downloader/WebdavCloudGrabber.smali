.class public Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;
.super Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final TEMP_FILE:Ljava/io/File;


# instance fields
.field private host:Ljava/lang/String;

.field private sardine:Lcom/thegrizzlylabs/sardineandroid/Sardine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->LOG:Lorg/slf4j/Logger;

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "webdav.tmp"

    .line 19
    .line 20
    invoke-static {v2, v3, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->TEMP_FILE:Ljava/io/File;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;-><init>()V

    return-void
.end method

.method private createHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;

    invoke-static {}, Lsk/mimac/slideshow/utils/HttpUtils;->getDefaultSlowClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object v1, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->sardine:Lcom/thegrizzlylabs/sardineandroid/Sardine;

    const-string v1, ":"

    if-eqz p1, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->sardine:Lcom/thegrizzlylabs/sardineandroid/Sardine;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x20

    const/16 v6, 0x2b

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    aget-object p1, p1, v7

    invoke-static {p1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1, v7}, Lcom/thegrizzlylabs/sardineandroid/Sardine;->setCredentials(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private downloadFile(Lcom/thegrizzlylabs/sardineandroid/DavResource;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/csv/FileDataParser;",
            ")",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lsk/mimac/slideshow/downloader/DownloadStatistics;",
            ">;"
        }
    .end annotation

    invoke-virtual {p4, p3}, Lsk/mimac/slideshow/csv/FileDataParser;->getFileDates(Ljava/lang/String;)Lsk/mimac/slideshow/csv/FileConfig;

    move-result-object v0

    const-string v1, "/"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsk/mimac/slideshow/csv/FileConfig;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->skipped(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/csv/FileConfig;->toFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 1
    invoke-static {p2, v1, p3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getContentLength()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    if-nez v8, :cond_2

    invoke-virtual {p4, p3}, Lsk/mimac/slideshow/csv/FileDataParser;->isConfigFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->notChanged(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v6, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->TEMP_FILE:Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->sardine:Lcom/thegrizzlylabs/sardineandroid/Sardine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/thegrizzlylabs/sardineandroid/Sardine;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->processFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lsk/mimac/slideshow/csv/FileDataParser;Lsk/mimac/slideshow/database/entity/FileData;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_6

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p3

    :try_start_6
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p3

    :try_start_8
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_6
    sget-object p3, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    sget-object p1, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->TEMP_FILE:Ljava/io/File;

    aput-object p1, p4, v2

    const/4 p1, 0x2

    aput-object p2, p4, p1

    const-string p1, "Can\'t download file [{}] from Dropbox to [{}]"

    invoke-interface {p3, p1, p4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;",
            "Lsk/mimac/slideshow/csv/FileDataParser;",
            ")",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lsk/mimac/slideshow/downloader/DownloadStatistics;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->empty()Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Ljava/io/File;

    sget-object v4, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Can\'t create folder \'{}\'"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->sardine:Lcom/thegrizzlylabs/sardineandroid/Sardine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/thegrizzlylabs/sardineandroid/Sardine;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->removeCurrentFolder(Ljava/util/List;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2
    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v3, p4}, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->add(Lsk/mimac/slideshow/downloader/DownloadStatistics;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    goto/16 :goto_0

    :cond_2
    const-string v4, "setup.csv"

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->ALLOW_UNSUPPORTED_FILE_TYPES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v4}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lsk/mimac/slideshow/FileConstants;->APK_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    :cond_4
    invoke-static {p2}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p4}, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->downloadFile(Lcom/thegrizzlylabs/sardineandroid/DavResource;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v2

    goto :goto_1

    :cond_5
    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private removeCurrentFolder(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public downloadFiles(Ljava/lang/String;Ljava/lang/String;Z)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->createHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->sardine:Lcom/thegrizzlylabs/sardineandroid/Sardine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/Sardine;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->removeCurrentFolder(Ljava/util/List;Ljava/lang/String;)V

    sget-object v2, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const/4 p1, 0x2

    aput-object p2, v4, p1

    const-string p1, "Downloading {} files from WebDAV folder \'{}\' into folder \'{}\'"

    invoke-interface {v2, p1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/io/File;

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {p1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-direct {v4, p1}, Lsk/mimac/slideshow/csv/FileDataParser;-><init>(Ljava/io/File;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {v5}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setup.csv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->sardine:Lcom/thegrizzlylabs/sardineandroid/Sardine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/thegrizzlylabs/sardineandroid/Sardine;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-virtual {v4, p1}, Lsk/mimac/slideshow/csv/FileDataParser;->parseCsv(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    sget-object p3, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Won\'t unpack WebDAV folder \'{}\': {}"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v1, v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->skipped(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p2

    :goto_0
    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2

    :cond_3
    :goto_2
    const-string p1, ""

    invoke-direct {p0, p2, p1, v1, v4}, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;->downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_4

    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->deleteFiles(Ljava/util/Set;)V

    :cond_4
    invoke-virtual {v4}, Lsk/mimac/slideshow/csv/FileDataParser;->finalizeProcessing()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "WebDAV"

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "webdav"

    return-object v0
.end method

.method public isAssociatedWithUser()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public listFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loginUser()V
    .locals 0

    return-void
.end method

.method public logoutUser()V
    .locals 0

    return-void
.end method
