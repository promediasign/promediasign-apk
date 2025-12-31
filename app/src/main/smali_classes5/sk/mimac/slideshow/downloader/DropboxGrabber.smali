.class public Lsk/mimac/slideshow/downloader/DropboxGrabber;
.super Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;
    }
.end annotation


# static fields
.field private static final DBX_APP_INFO:Lcom/dropbox/core/DbxAppInfo;

.field private static final DBX_SESSION_STORE:Lcom/dropbox/core/DbxSessionStore;

.field private static final LOG:Lorg/slf4j/Logger;

.field private static final REQUEST_CONFIG:Lcom/dropbox/core/DbxRequestConfig;

.field private static final TEMP_FILE:Ljava/io/File;

.field private static final TOKEN_FILE:Ljava/io/File;

.field private static final VERIFICATION_CODE_RECEIVER:Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;


# instance fields
.field private client:Lcom/dropbox/core/v2/DbxClientV2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->LOG:Lorg/slf4j/Logger;

    .line 8
    .line 9
    const-string v1, "Slideshow"

    .line 10
    .line 11
    invoke-static {v1}, Lcom/dropbox/core/DbxRequestConfig;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/dropbox/core/http/OkHttp3Requestor;

    .line 16
    .line 17
    invoke-static {}, Lcom/dropbox/core/http/OkHttp3Requestor;->defaultOkHttpClient()Lokhttp3/OkHttpClient;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v2, v3}, Lcom/dropbox/core/http/OkHttp3Requestor;-><init>(Lokhttp3/OkHttpClient;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/dropbox/core/DbxRequestConfig$Builder;->withHttpRequestor(Lcom/dropbox/core/http/HttpRequestor;)Lcom/dropbox/core/DbxRequestConfig$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/dropbox/core/DbxRequestConfig$Builder;->build()Lcom/dropbox/core/DbxRequestConfig;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->REQUEST_CONFIG:Lcom/dropbox/core/DbxRequestConfig;

    .line 33
    .line 34
    new-instance v1, Ljava/io/File;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v3, Lsk/mimac/slideshow/FileConstants;->INTERNAL_PATH:Ljava/lang/String;

    .line 42
    .line 43
    const-string v4, "/dropbox-token"

    .line 44
    .line 45
    invoke-static {v3, v4, v2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->TOKEN_FILE:Ljava/io/File;

    .line 53
    .line 54
    new-instance v1, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-direct {v1, v2}, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;-><init>(Lsk/mimac/slideshow/downloader/DropboxGrabber$1;)V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->VERIFICATION_CODE_RECEIVER:Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;

    .line 61
    .line 62
    new-instance v1, Ljava/io/File;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    sget-object v3, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    .line 70
    .line 71
    const-string v4, "dropbox.tmp"

    .line 72
    .line 73
    invoke-static {v3, v4, v2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sput-object v1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->TEMP_FILE:Ljava/io/File;

    .line 81
    .line 82
    new-instance v1, Lsk/mimac/slideshow/downloader/DropboxGrabber$1;

    .line 83
    .line 84
    invoke-direct {v1}, Lsk/mimac/slideshow/downloader/DropboxGrabber$1;-><init>()V

    .line 85
    .line 86
    .line 87
    sput-object v1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->DBX_SESSION_STORE:Lcom/dropbox/core/DbxSessionStore;

    .line 88
    .line 89
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "dropbox-credentials.json"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    sget-object v1, Lcom/dropbox/core/DbxAppInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Lcom/dropbox/core/json/JsonReader;->readFully(Ljava/io/InputStream;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/dropbox/core/DbxAppInfo;

    .line 106
    .line 107
    sput-object v1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->DBX_APP_INFO:Lcom/dropbox/core/DbxAppInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    if-eqz v0, :cond_0

    .line 110
    .line 111
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    goto :goto_2

    .line 117
    :catch_1
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 120
    :catchall_0
    move-exception v1

    .line 121
    if-eqz v0, :cond_1

    .line 122
    .line 123
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_4 .. :try_end_4} :catch_0

    .line 132
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 133
    .line 134
    const-string v2, "Can\'t load Dropbox client secrets"

    .line 135
    .line 136
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;-><init>()V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->lambda$listFolders$0(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200()Lcom/dropbox/core/DbxSessionStore;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->DBX_SESSION_STORE:Lcom/dropbox/core/DbxSessionStore;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/dropbox/core/DbxRequestConfig;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->REQUEST_CONFIG:Lcom/dropbox/core/DbxRequestConfig;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/dropbox/core/DbxAppInfo;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->DBX_APP_INFO:Lcom/dropbox/core/DbxAppInfo;

    return-object v0
.end method

.method public static synthetic access$500()Ljava/io/File;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->TOKEN_FILE:Ljava/io/File;

    return-object v0
.end method

.method public static synthetic access$600()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private downloadFile(Lcom/dropbox/core/v2/files/FileMetadata;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
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

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/FileMetadata;->getSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/FileMetadata;->getServerModified()Ljava/util/Date;

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

    sget-object v6, Lsk/mimac/slideshow/downloader/DropboxGrabber;->TEMP_FILE:Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->getClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxClientV2Base;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/FileMetadata;->getPathLower()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/DbxDownloader;->download(Ljava/io/OutputStream;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/dropbox/core/DbxException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->processFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lsk/mimac/slideshow/csv/FileDataParser;Lsk/mimac/slideshow/database/entity/FileData;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_3

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/dropbox/core/DbxException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object p3, Lsk/mimac/slideshow/downloader/DropboxGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/FileMetadata;->getPathLower()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    sget-object p1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->TEMP_FILE:Ljava/io/File;

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
            "Lcom/dropbox/core/v2/files/Metadata;",
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

    check-cast v2, Lcom/dropbox/core/v2/files/Metadata;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    instance-of v4, v2, Lcom/dropbox/core/v2/files/FolderMetadata;

    if-eqz v4, :cond_2

    new-instance v3, Ljava/io/File;

    sget-object v4, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

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

    sget-object v4, Lsk/mimac/slideshow/downloader/DropboxGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Can\'t create folder \'{}\'"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/Metadata;->getPathLower()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->getMetadataList(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v3

    .line 1
    invoke-static {p2}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2
    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v3, p4}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

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

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_0

    :cond_3
    instance-of v4, v2, Lcom/dropbox/core/v2/files/FileMetadata;

    if-eqz v4, :cond_0

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

    :cond_4
    move-object v3, v2

    check-cast v3, Lcom/dropbox/core/v2/files/FileMetadata;

    .line 3
    invoke-static {p2}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, p1, v2, p4}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->downloadFile(Lcom/dropbox/core/v2/files/FileMetadata;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v2

    goto :goto_1

    :cond_5
    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getClient()Lcom/dropbox/core/v2/DbxClientV2;
    .locals 10

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->client:Lcom/dropbox/core/v2/DbxClientV2;

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->TOKEN_FILE:Ljava/io/File;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"accessToken\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/dropbox/core/v2/DbxClientV2;

    sget-object v2, Lsk/mimac/slideshow/downloader/DropboxGrabber;->REQUEST_CONFIG:Lcom/dropbox/core/DbxRequestConfig;

    new-instance v9, Lcom/dropbox/core/oauth/DbxCredential;

    const-string v3, "accessToken"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "expiresAt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v3, "refreshToken"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->DBX_APP_INFO:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v1}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/dropbox/core/DbxAppInfo;->getSecret()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/core/oauth/DbxCredential;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v9}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/oauth/DbxCredential;)V

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->client:Lcom/dropbox/core/v2/DbxClientV2;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dropbox/core/v2/DbxClientV2;

    sget-object v2, Lsk/mimac/slideshow/downloader/DropboxGrabber;->REQUEST_CONFIG:Lcom/dropbox/core/DbxRequestConfig;

    invoke-direct {v1, v2, v0}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V

    iput-object v1, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->client:Lcom/dropbox/core/v2/DbxClientV2;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load user token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->client:Lcom/dropbox/core/v2/DbxClientV2;

    return-object v0
.end method

.method private getMetadataList(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/Metadata;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->getClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxClientV2Base;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderBuilder;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/dropbox/core/v2/files/ListFolderBuilder;->withIncludeNonDownloadableFiles(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/dropbox/core/v2/files/ListFolderBuilder;->withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;

    move-result-object p1

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/dropbox/core/v2/files/ListFolderBuilder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListFolderBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ListFolderBuilder;->start()Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getEntries()Ljava/util/List;

    move-result-object p3

    :goto_0
    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getHasMore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getHasMore()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lsk/mimac/slideshow/downloader/DropboxGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Only first {} entries are displayed from Drobpox"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object p3
.end method

.method private static synthetic lambda$listFolders$0(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I
    .locals 0

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static notifyCode(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->VERIFICATION_CODE_RECEIVER:Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;

    invoke-static {p0, v0}, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->access$100(Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public downloadFiles(Ljava/lang/String;Ljava/lang/String;Z)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->getMetadataList(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lsk/mimac/slideshow/downloader/DropboxGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v3, 0x2

    aput-object p2, v4, v3

    const-string v3, "Downloading {} files from Dropbox folder \'{}\' into folder \'{}\'"

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-static {v2, v4, v1}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-direct {v4, v2}, Lsk/mimac/slideshow/csv/FileDataParser;-><init>(Ljava/io/File;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dropbox/core/v2/files/Metadata;

    instance-of v6, v5, Lcom/dropbox/core/v2/files/FileMetadata;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setup.csv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v2, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->client:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxClientV2Base;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v2

    invoke-virtual {v5}, Lcom/dropbox/core/v2/files/Metadata;->getPathLower()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/core/DbxDownloader;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :try_start_0
    invoke-virtual {v4, v2}, Lsk/mimac/slideshow/csv/FileDataParser;->parseCsv(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    sget-object p3, Lsk/mimac/slideshow/downloader/DropboxGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Won\'t unpack Dropbox folder \'{}\': {}"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->skipped(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p1

    :goto_0
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    :goto_2
    const-string p1, ""

    invoke-direct {p0, p2, p1, v0, v4}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v3, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_4

    invoke-virtual {p0, v3}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->deleteFiles(Ljava/util/Set;)V

    :cond_4
    invoke-virtual {v4}, Lsk/mimac/slideshow/csv/FileDataParser;->finalizeProcessing()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Dropbox"

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "dropbox"

    return-object v0
.end method

.method public isAssociatedWithUser()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->TOKEN_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public listFolders()Ljava/util/List;
    .locals 7
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    const/16 v3, 0x1f4

    invoke-direct {p0, v2, v3, v1}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->getMetadataList(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->getMetadataList(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dropbox/core/v2/files/Metadata;

    instance-of v4, v3, Lcom/dropbox/core/v2/files/FolderMetadata;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/dropbox/core/v2/files/FolderMetadata;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/Metadata;->getPathDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/FolderMetadata;->getSharedFolderId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "shared"

    invoke-static {v6}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/FolderMetadata;->getPathLower()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, LE/a;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, LE/a;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public loginUser()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Login for Dropbox"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->newRequestBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    const-string v1, "http://127.0.0.1:8080/public/callback/dropbox"

    sget-object v2, Lsk/mimac/slideshow/downloader/DropboxGrabber;->DBX_SESSION_STORE:Lcom/dropbox/core/DbxSessionStore;

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->withRedirectUri(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/core/TokenAccessType;->OFFLINE:Lcom/dropbox/core/TokenAccessType;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->withTokenAccessType(Lcom/dropbox/core/TokenAccessType;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->build()Lcom/dropbox/core/DbxWebAuth$Request;

    move-result-object v0

    new-instance v1, Lcom/dropbox/core/DbxWebAuth;

    sget-object v2, Lsk/mimac/slideshow/downloader/DropboxGrabber;->REQUEST_CONFIG:Lcom/dropbox/core/DbxRequestConfig;

    sget-object v3, Lsk/mimac/slideshow/downloader/DropboxGrabber;->DBX_APP_INFO:Lcom/dropbox/core/DbxAppInfo;

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/DbxWebAuth;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V

    invoke-virtual {v1, v0}, Lcom/dropbox/core/DbxWebAuth;->authorize(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->openInBrowser(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->VERIFICATION_CODE_RECEIVER:Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;

    invoke-virtual {v0}, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->waitForCode()V

    return-void
.end method

.method public logoutUser()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Logout for Dropbox"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/downloader/DropboxGrabber;->TOKEN_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
