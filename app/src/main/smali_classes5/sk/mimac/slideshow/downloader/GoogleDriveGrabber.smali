.class public Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;
.super Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;
    }
.end annotation


# static fields
.field private static final CLIENT_SECRETS:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

.field private static final DOCS_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

.field private static final LOG:Lorg/slf4j/Logger;

.field private static final SCOPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMP_FILE:Ljava/io/File;

.field private static final TOKENS_DIRECTORY:Ljava/lang/String;

.field private static final VERIFICATION_CODE_RECEIVER:Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;


# instance fields
.field private final authorizationFlow:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

.field private drive:Lcom/google/api/services/drive/Drive;

.field private final httpTransport:Lcom/google/api/client/http/javanet/NetHttpTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->LOG:Lorg/slf4j/Logger;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    .line 14
    .line 15
    const-string v2, "https://www.googleapis.com/auth/drive.readonly"

    .line 16
    .line 17
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sput-object v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->SCOPES:Ljava/util/List;

    .line 22
    .line 23
    new-instance v2, Ljava/util/HashSet;

    .line 24
    .line 25
    const-string v3, "application/vnd.google-apps.presentation"

    .line 26
    .line 27
    const-string v4, "application/vnd.google-apps.drawing"

    .line 28
    .line 29
    const-string v5, "application/vnd.google-apps.document"

    .line 30
    .line 31
    const-string v6, "application/vnd.google-apps.spreadsheet"

    .line 32
    .line 33
    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    sput-object v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->DOCS_MIME_TYPES:Ljava/util/Set;

    .line 45
    .line 46
    new-instance v2, Ljava/io/File;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v4, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    .line 54
    .line 55
    const-string v5, "gdrive.tmp"

    .line 56
    .line 57
    invoke-static {v4, v5, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sput-object v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->TEMP_FILE:Ljava/io/File;

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    sget-object v3, Lsk/mimac/slideshow/FileConstants;->INTERNAL_PATH:Ljava/lang/String;

    .line 72
    .line 73
    const-string v4, "/tokens"

    .line 74
    .line 75
    invoke-static {v3, v4, v2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sput-object v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->TOKENS_DIRECTORY:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {v2, v3}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;-><init>(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$1;)V

    .line 85
    .line 86
    .line 87
    sput-object v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->VERIFICATION_CODE_RECEIVER:Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;

    .line 88
    .line 89
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v2, "google-credentials.json"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->load(Lcom/google/api/client/json/JsonFactory;Ljava/io/Reader;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    sput-object v1, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->CLIENT_SECRETS:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    goto :goto_2

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 119
    :catchall_0
    move-exception v1

    .line 120
    if-eqz v0, :cond_1

    .line 121
    .line 122
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catchall_1
    move-exception v0

    .line 127
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 131
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 132
    .line 133
    const-string v2, "Can\'t load Google client secrets"

    .line 134
    .line 135
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw v1
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;-><init>()V

    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->httpTransport:Lcom/google/api/client/http/javanet/NetHttpTransport;

    :try_start_0
    new-instance v1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    sget-object v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    sget-object v3, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->CLIENT_SECRETS:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    sget-object v4, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->SCOPES:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;Ljava/util/Collection;)V

    new-instance v0, Lcom/google/api/client/util/store/FileDataStoreFactory;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->TOKENS_DIRECTORY:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/api/client/util/store/FileDataStoreFactory;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setDataStoreFactory(Lcom/google/api/client/util/store/DataStoreFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setAccessType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->authorizationFlow:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t load Google Drive data"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic a(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->lambda$getCredential$1(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic b(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->lambda$listFolders$0(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I

    move-result p0

    return p0
.end method

.method private createDrive(Z)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->drive:Lcom/google/api/services/drive/Drive;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/api/services/drive/Drive$Builder;

    iget-object v1, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->httpTransport:Lcom/google/api/client/http/javanet/NetHttpTransport;

    sget-object v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->getCredential(Z)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string p1, "Slideshow Digital Signage"

    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->drive:Lcom/google/api/services/drive/Drive;

    :cond_0
    return-void
.end method

.method private downloadFile(Lcom/google/api/services/drive/model/File;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/csv/FileDataParser;Z)Lsk/mimac/slideshow/utils/Couple;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/drive/model/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/csv/FileDataParser;",
            "Z)",
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

    if-nez p5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getModifiedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getModifiedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/DateTime;->getValue()J

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

    sget-object v6, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->TEMP_FILE:Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p5}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->downloadFile(Ljava/lang/String;Ljava/io/FileOutputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3
    invoke-static {p3}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p5, :cond_3

    .line 4
    const-string p3, ".pdf"

    goto :goto_2

    :cond_3
    const-string p3, ""

    :goto_2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p2

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->processFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lsk/mimac/slideshow/csv/FileDataParser;Lsk/mimac/slideshow/database/entity/FileData;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_4

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sget-object p3, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p5, v0

    aput-object p1, p5, v2

    sget-object p1, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->TEMP_FILE:Ljava/io/File;

    const/4 p4, 0x2

    aput-object p1, p5, p4

    const/4 p1, 0x3

    aput-object p2, p5, p1

    const-string p1, "Can\'t download file [id={},name={}] from Google Drive to [{}]"

    invoke-interface {p3, p1, p5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private downloadFile(Ljava/lang/String;Ljava/io/FileOutputStream;Z)V
    .locals 9

    .line 14
    if-eqz p3, :cond_1

    iget-object p3, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->drive:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p3}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object p3

    const-string v0, "exportLinks"

    invoke-virtual {p3, v0}, Lcom/google/api/services/drive/Drive$Files$Get;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/api/services/drive/model/File;

    invoke-virtual {p3}, Lcom/google/api/services/drive/model/File;->getExportLinks()Ljava/util/Map;

    move-result-object p3

    const-string v0, "application/pdf"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v8, p3

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    new-instance p1, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$1;

    iget-object v3, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->drive:Lcom/google/api/services/drive/Drive;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Void;

    const-string v4, "GET"

    move-object v1, p1

    move-object v2, p0

    move-object v5, v8

    invoke-direct/range {v1 .. v8}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$1;-><init>(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeAndDownloadTo(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->drive:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p3}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lcom/google/api/services/drive/Drive$Files;->export(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/Drive$Files$Export;->executeMediaAndDownloadTo(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->drive:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p3}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/Drive$Files$Get;->executeMediaAndDownloadTo(Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method private downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/FileList;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/services/drive/model/FileList;",
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

    invoke-virtual {p3}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/api/services/drive/model/File;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.google-apps.folder"

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Can\'t create folder \'{}\'"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' in parents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->listFiles(Ljava/lang/String;)Lcom/google/api/services/drive/model/FileList;

    move-result-object v2

    .line 1
    invoke-static {p2}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2, p4}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/FileList;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

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
    const-string v3, "setup.csv"

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->DOCS_MIME_TYPES:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3
    invoke-static {p2}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    :goto_2
    move-object v3, p0

    move-object v5, p1

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->downloadFile(Lcom/google/api/services/drive/model/File;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/csv/FileDataParser;Z)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v2

    goto :goto_1

    :cond_4
    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->ALLOW_UNSUPPORTED_FILE_TYPES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v3}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->APK_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :cond_5
    invoke-static {p2}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getCredential(Z)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 5

    new-instance v0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;

    iget-object v1, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->authorizationFlow:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

    sget-object v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->VERIFICATION_CODE_RECEIVER:Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;

    new-instance v3, Lv/f;

    const/4 v4, 0x3

    invoke-direct {v3, v4, p0, p1}, Lv/f;-><init>(ILjava/lang/Object;Z)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;-><init>(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp$Browser;)V

    const-string p1, "default-user"

    invoke-virtual {v0, p1}, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->authorize(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getCredential$1(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->openInBrowser(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic lambda$listFolders$0(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I
    .locals 0

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private listFiles(Ljava/lang/String;)Lcom/google/api/services/drive/model/FileList;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->drive:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and trashed = false"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    const-string v0, "files(id, name, ownedByMe, mimeType, size, modifiedTime)"

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive$Files$List;->setPageSize(Ljava/lang/Integer;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/FileList;

    return-object p1
.end method

.method public static notifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->VERIFICATION_CODE_RECEIVER:Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;

    invoke-static {v0, p0, p1}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->access$100(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openInBrowser(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lsk/mimac/slideshow/PlatformDependentFactory;->openInBrowser(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Probably expired or nonexisting token?"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public downloadFiles(Ljava/lang/String;Ljava/lang/String;Z)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->createDrive(Z)V

    const-string v1, "\'"

    const-string v2, "\' in parents"

    .line 1
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {p0, v1}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->listFiles(Ljava/lang/String;)Lcom/google/api/services/drive/model/FileList;

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    const/4 v3, 0x2

    aput-object p2, v4, v3

    const-string v3, "Downloading {} files from Google Drive folder \'{}\' into folder \'{}\'"

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-direct {v4, v2}, Lsk/mimac/slideshow/csv/FileDataParser;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/drive/model/File;

    invoke-virtual {v5}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setup.csv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v2, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->drive:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v2

    invoke-virtual {v5}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/drive/Drive$Files$Get;->executeMediaAsInputStream()Ljava/io/InputStream;

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
    sget-object p3, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Won\'t unpack Google Drive folder \'{}\': {}"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->skipped(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

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

    invoke-direct {p0, p2, p1, v1, v4}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/FileList;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

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

    const-string v0, "Google Drive"

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "gdrive"

    return-object v0
.end method

.method public isAssociatedWithUser()Z
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->authorizationFlow:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->getCredentialDataStore()Lcom/google/api/client/util/store/DataStore;

    move-result-object v0

    const-string v1, "default-user"

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStore;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listFolders()Ljava/util/List;
    .locals 6
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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->createDrive(Z)V

    const-string v0, "mimeType = \'application/vnd.google-apps.folder\'"

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->listFiles(Ljava/lang/String;)Lcom/google/api/services/drive/model/FileList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/drive/model/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/api/services/drive/model/File;->getOwnedByMe()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "shared"

    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v2}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, LE/a;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, LE/a;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public loginUser()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Login for Google Drive"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->createDrive(Z)V

    return-void
.end method

.method public logoutUser()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Logout for Google Drive"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->authorizationFlow:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->getCredentialDataStore()Lcom/google/api/client/util/store/DataStore;

    move-result-object v0

    const-string v1, "default-user"

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStore;->delete(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    return-void
.end method
