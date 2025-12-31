.class public Lsk/mimac/slideshow/downloader/FileGrabber;
.super Ljava/util/TimerTask;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final lastStatistics:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lsk/mimac/slideshow/downloader/DownloadStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lsk/mimac/slideshow/downloader/FileGrabber;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

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
    const-string v3, "grabber.tmp"

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
    sput-object v0, Lsk/mimac/slideshow/downloader/FileGrabber;->tempFile:Ljava/io/File;

    .line 28
    .line 29
    new-instance v0, Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lsk/mimac/slideshow/downloader/FileGrabber;->lastStatistics:Ljava/util/LinkedList;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private static deleteFiles(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t delete file \"{}\""

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized downloadFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;",
            ">;",
            "Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;",
            ")",
            "Lsk/mimac/slideshow/downloader/DownloadStatistics;"
        }
    .end annotation

    .line 1
    const-class v0, Lsk/mimac/slideshow/downloader/FileGrabber;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lj$/time/OffsetDateTime;->now()Lj$/time/OffsetDateTime;

    move-result-object v1

    invoke-static {p0}, Lsk/mimac/slideshow/utils/UrlUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, p0, p2, p3}, Lsk/mimac/slideshow/downloader/FileGrabber;->downloadHttp(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    if-nez p4, :cond_1

    new-instance p4, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p4, p3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->createAllProviders()Ljava/util/List;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p4, p1, p0, p2}, Lsk/mimac/slideshow/downloader/FileGrabber;->downloadFromCloud(Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;Ljava/lang/String;Ljava/lang/String;Z)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p2

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_5

    sget-object p2, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Unknown protocol for grabbing: {}"

    invoke-interface {p2, p3, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x1

    invoke-static {p2}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p2

    :cond_5
    invoke-virtual {p2, p0}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->setSource(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->setTarget(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->setStarted(Lj$/time/OffsetDateTime;)V

    invoke-static {}, Lj$/time/OffsetDateTime;->now()Lj$/time/OffsetDateTime;

    move-result-object p0

    invoke-virtual {p2, p0}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->setFinished(Lj$/time/OffsetDateTime;)V

    invoke-virtual {p2, p5}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->setStartMethod(Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;)V

    sget-object p0, Lsk/mimac/slideshow/downloader/FileGrabber;->lastStatistics:Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p3, 0xa

    if-le p1, p3, :cond_6

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v0

    return-object p2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized downloadFile(Lsk/mimac/slideshow/database/entity/GrabberData;Ljava/util/List;Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/database/entity/GrabberData;",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;",
            ">;",
            "Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;",
            ")",
            "Lsk/mimac/slideshow/downloader/DownloadStatistics;"
        }
    .end annotation

    .line 2
    const-class v0, Lsk/mimac/slideshow/downloader/FileGrabber;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/GrabberData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v3

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lsk/mimac/slideshow/downloader/FileGrabber;->downloadFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static downloadFromCloud(Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;Ljava/lang/String;Ljava/lang/String;Z)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 1
    invoke-static {v2, p1, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p3}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->downloadFiles(Ljava/lang/String;Ljava/lang/String;Z)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/dropbox/core/NetworkIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p1, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Can\'t download file from \'{}\'"

    invoke-interface {p1, p3, p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    sget-object p1, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Can\'t download file from \'{}\': {}"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p3, p2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    const/4 p0, 0x1

    invoke-static {p0}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p0

    return-object p0
.end method

.method public static downloadHttp(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 6

    sget-object v0, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const-string v1, "Downloading from \'{}\' to \'{}\' with clearFolder={}"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 1
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lsk/mimac/slideshow/utils/FileUtils2;->checkFileInDirectory(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const-string v1, "ftp://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p3, Lsk/mimac/slideshow/downloader/FileGrabber;->tempFile:Ljava/io/File;

    const v1, 0xea60

    invoke-static {p1, p3, v1}, Lsk/mimac/slideshow/utils/HttpUtils;->downloadFtpToFile(Ljava/lang/String;Ljava/io/File;I)V

    const/4 p3, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :catch_2
    move-exception p0

    goto/16 :goto_4

    :catch_3
    move-exception p0

    goto/16 :goto_4

    :catch_4
    move-exception p0

    goto/16 :goto_4

    :catch_5
    move-exception p0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lsk/mimac/slideshow/downloader/FileGrabber;->tempFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lsk/mimac/slideshow/exception/UnsuccessfulRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {p1, p3, v2, v1}, Lsk/mimac/slideshow/downloader/FileGrabber;->downloadToOutput(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;)Ljava/util/Date;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->ARCHIVE_EXTENSIONS:Ljava/util/Set;

    invoke-static {p0}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    sget-object v1, Lsk/mimac/slideshow/downloader/FileGrabber;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0, v3, p3, p2}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;Ljava/io/File;ZLjava/util/Date;Z)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {v3, v4, v5}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(IJ)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_3

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p0, p2

    :goto_1
    invoke-interface {p0, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lsk/mimac/slideshow/downloader/FileGrabber;->deleteFiles(Ljava/util/Set;)V

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0, v4, v5}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->success(IJ)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    sget-object p0, Lsk/mimac/slideshow/downloader/FileGrabber;->tempFile:Ljava/io/File;

    invoke-static {p0, v0}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v3}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-static {v3, p2, p3}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->success(IJ)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lsk/mimac/slideshow/exception/UnsuccessfulRequestException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lsk/mimac/slideshow/exception/UnsuccessfulRequestException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object p2, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t download file from \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    sget-object p2, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Can\'t download file from \'{}\': {}"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p3, p1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    invoke-static {v3}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p0

    return-object p0
.end method

.method private static downloadToOutput(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;)Ljava/util/Date;
    .locals 4

    const-string v0, "Request to \""

    invoke-static {}, Lsk/mimac/slideshow/utils/HttpUtils;->getDefaultSlowClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    const-string v2, "post"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "application/json"

    if-eqz v2, :cond_0

    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {p2}, Lsk/mimac/slideshow/downloader/FileGrabber;->preparePostObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v2, "put"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {p2}, Lsk/mimac/slideshow/downloader/FileGrabber;->preparePostObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    const-string p2, "date"

    invoke-virtual {p0, p2}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2, p3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_1
    new-instance p2, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" returned "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": \""

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p3

    invoke-direct {p2, p0, p3}, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p0
.end method

.method public static declared-synchronized getLastStatistics()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/downloader/DownloadStatistics;",
            ">;"
        }
    .end annotation

    const-class v0, Lsk/mimac/slideshow/downloader/FileGrabber;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lsk/mimac/slideshow/downloader/FileGrabber;->lastStatistics:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getProvisioningUrl()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/utils/NetworkFormatterUtils;->getMacAddress()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x3a

    .line 6
    .line 7
    const/16 v2, 0x2d

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lsk/mimac/slideshow/BuildInfo;->PROVISIONING_SERVER_URL:Ljava/lang/String;

    .line 25
    .line 26
    const-string v3, ".zip"

    .line 27
    .line 28
    invoke-static {v1, v2, v0, v3}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method private static preparePostObject(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {p0, v2, v2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "name"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "lastModified"

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/File;

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "currentFiles"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "storageSpaceFree"

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static runOne(Ljava/lang/Long;)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getById(J)Lsk/mimac/slideshow/database/entity/GrabberData;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->MANUAL:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    invoke-static {v2, v3, v4}, Lsk/mimac/slideshow/downloader/FileGrabber;->downloadFile(Lsk/mimac/slideshow/database/entity/GrabberData;Ljava/util/List;Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-object v5, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    sub-long/2addr v3, v0

    const-wide/32 v0, 0x3b9aca00

    div-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    const/4 p0, 0x1

    aput-object v0, v1, p0

    const/4 p0, 0x2

    aput-object v2, v1, p0

    const-string p0, "File grabber for id={} finished in {} seconds, statistics: {}"

    invoke-interface {v5, p0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->empty()Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object v3

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/database/entity/GrabberData;

    sget-object v6, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->SCHEDULER:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    invoke-static {v5, v2, v6}, Lsk/mimac/slideshow/downloader/FileGrabber;->downloadFile(Lsk/mimac/slideshow/database/entity/GrabberData;Ljava/util/List;Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object v5

    invoke-virtual {v5}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFilesFailed()I

    move-result v6

    if-lez v6, :cond_0

    const-wide/32 v6, 0xea60

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {v3, v5}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->add(Lsk/mimac/slideshow/downloader/DownloadStatistics;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-object v2, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v6, "File grabber finished in {} seconds, statistics: {}"

    sub-long/2addr v4, v0

    const-wide/32 v0, 0x3b9aca00

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v6, v0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v1, Lsk/mimac/slideshow/downloader/FileGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t read grabber database"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
