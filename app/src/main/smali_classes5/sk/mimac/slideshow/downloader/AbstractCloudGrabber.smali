.class public abstract Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAllProviders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;

    invoke-direct {v0}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;-><init>()V

    new-instance v1, Lsk/mimac/slideshow/downloader/DropboxGrabber;

    invoke-direct {v1}, Lsk/mimac/slideshow/downloader/DropboxGrabber;-><init>()V

    new-instance v2, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;

    invoke-direct {v2}, Lsk/mimac/slideshow/downloader/WebdavCloudGrabber;-><init>()V

    new-instance v3, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;

    invoke-direct {v3}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    sget-object v3, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    aput-object p1, v4, v1

    const/4 p0, 0x2

    aput-object v2, v4, p0

    const-string p0, "Can\'t move file \'{}\' to \'{}\': {}"

    invoke-interface {v3, p0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public deleteFiles(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/database/dao/FileDataDao;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Can\'t delete file \"{}\""

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v3, v4, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract downloadFiles(Ljava/lang/String;Ljava/lang/String;Z)Lsk/mimac/slideshow/downloader/DownloadStatistics;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract isAssociatedWithUser()Z
.end method

.method public abstract listFolders()Ljava/util/List;
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
.end method

.method public abstract loginUser()V
.end method

.method public abstract logoutUser()V
.end method

.method public processFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lsk/mimac/slideshow/csv/FileDataParser;Lsk/mimac/slideshow/database/entity/FileData;)Lsk/mimac/slideshow/utils/Couple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lsk/mimac/slideshow/csv/FileDataParser;",
            "Lsk/mimac/slideshow/database/entity/FileData;",
            ")",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lsk/mimac/slideshow/downloader/DownloadStatistics;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const-string v2, "/"

    .line 1
    invoke-static {p1, v2, p2}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Lsk/mimac/slideshow/csv/FileDataParser;->checkConfig(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->skipped(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/FileConstants;->ARCHIVE_EXTENSIONS:Ljava/util/Set;

    invoke-static {p2}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p4

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p3, p1}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-static {p2, p4, p5}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(IJ)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p2, Lsk/mimac/slideshow/utils/Couple;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3, p4, p5}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->success(IJ)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {p3, v0}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-static {p2}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    if-eqz p5, :cond_4

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p1

    invoke-virtual {p1, p5}, Lsk/mimac/slideshow/database/dao/FileDataDao;->createOrUpdate(Lsk/mimac/slideshow/database/entity/FileData;)V

    :cond_4
    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p4

    invoke-static {p2, p4, p5}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->success(IJ)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
