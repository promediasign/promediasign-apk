.class public Lsk/mimac/slideshow/downloader/SftpCloudGrabber;
.super Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final TEMP_FILE:Ljava/io/File;


# instance fields
.field private channel:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->LOG:Lorg/slf4j/Logger;

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
    const-string v3, "sftp.tmp"

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
    sput-object v0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->TEMP_FILE:Ljava/io/File;

    .line 28
    .line 29
    new-instance v0, Li1/a;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->lambda$static$0(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object p0

    return-object p0
.end method

.method private createHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    const-string v1, "sftp://"

    .line 4
    .line 5
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/16 v2, 0x3a

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ltz v2, :cond_1

    .line 25
    .line 26
    const-string p1, ":"

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Lcom/jcraft/jsch/JSch;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/jcraft/jsch/JSch;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aget-object v2, p1, v2

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-lez v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 v4, 0x16

    .line 57
    .line 58
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x1

    .line 63
    aget-object p1, p1, v2

    .line 64
    .line 65
    invoke-static {p1}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPasswordWithHashBase64(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Session;->setPassword(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p1, "StrictHostKeyChecking"

    .line 73
    .line 74
    const-string v3, "no"

    .line 75
    .line 76
    invoke-virtual {v1, p1, v3}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->connect()V

    .line 80
    .line 81
    .line 82
    const-string p1, "sftp"

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;

    .line 89
    .line 90
    iput-object p1, p0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->channel:Lcom/jcraft/jsch/ChannelSftp;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/jcraft/jsch/Channel;->connect()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 105
    .line 106
    const-string v1, "SFTP address is missing credentials: "

    .line 107
    .line 108
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0
.end method

.method private downloadFile(Lcom/jcraft/jsch/ChannelSftp$LsEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jcraft/jsch/ChannelSftp$LsEntry;",
            "Ljava/lang/String;",
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

    invoke-virtual {p5, p4}, Lsk/mimac/slideshow/csv/FileDataParser;->getFileDates(Ljava/lang/String;)Lsk/mimac/slideshow/csv/FileConfig;

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

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-static {p3, v1, p4}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jcraft/jsch/SftpATTRS;->getMTime()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    if-nez v8, :cond_2

    invoke-virtual {p5, p4}, Lsk/mimac/slideshow/csv/FileDataParser;->isConfigFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->notChanged(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    sget-object v6, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->TEMP_FILE:Ljava/io/File;

    invoke-direct {p1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->channel:Lcom/jcraft/jsch/ChannelSftp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p2, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_3

    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->processFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lsk/mimac/slideshow/csv/FileDataParser;Lsk/mimac/slideshow/database/entity/FileData;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_6

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_4

    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_6
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_6
    sget-object p2, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->LOG:Lorg/slf4j/Logger;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p4, p3, p5

    sget-object p4, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->TEMP_FILE:Ljava/io/File;

    aput-object p4, p3, v2

    const/4 p4, 0x2

    aput-object p1, p3, p4

    const-string p1, "Can\'t download file [{}] from Dropbox to [{}]"

    invoke-interface {p2, p1, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {v2}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->failed(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jcraft/jsch/ChannelSftp$LsEntry;",
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

    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->empty()Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Ljava/io/File;

    sget-object v5, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, p1

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v7, "Can\'t create folder \'{}\'"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v7, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v4, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;-><init>(Lsk/mimac/slideshow/downloader/SftpCloudGrabber$1;)V

    move-object/from16 v15, p0

    iget-object v5, v15, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->channel:Lcom/jcraft/jsch/ChannelSftp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;->access$100(Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    invoke-virtual {v2, v4}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->add(Lsk/mimac/slideshow/downloader/DownloadStatistics;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    goto/16 :goto_0

    :cond_2
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v5, "setup.csv"

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v5, Lsk/mimac/slideshow/settings/UserSettings;->ALLOW_UNSUPPORTED_FILE_TYPES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v5}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lsk/mimac/slideshow/FileConstants;->APK_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1
    :cond_4
    invoke-static/range {p3 .. p3}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2
    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->downloadFile(Lcom/jcraft/jsch/ChannelSftp$LsEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    invoke-virtual {v2, v4}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->add(Lsk/mimac/slideshow/downloader/DownloadStatistics;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v15, p0

    new-instance v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1

    const-string v0, "sftp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$1;

    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$1;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public downloadFiles(Ljava/lang/String;Ljava/lang/String;Z)Lsk/mimac/slideshow/downloader/DownloadStatistics;
    .locals 8

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->createHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;-><init>(Lsk/mimac/slideshow/downloader/SftpCloudGrabber$1;)V

    iget-object v3, p0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->channel:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v3, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V

    sget-object v3, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->LOG:Lorg/slf4j/Logger;

    invoke-static {v0}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;->access$100(Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object p1, v5, v4

    const/4 p1, 0x2

    aput-object p2, v5, p1

    const-string p1, "Downloading {} files from SFTP folder \'{}\' into folder \'{}\'"

    invoke-interface {v3, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {p1, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashSet;

    invoke-static {p1, v1, v4}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-direct {v7, p1}, Lsk/mimac/slideshow/csv/FileDataParser;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;->access$100(Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v3

    const-string v5, "setup.csv"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->channel:Lcom/jcraft/jsch/ChannelSftp;

    const-string v3, "/"

    .line 1
    invoke-static {v2, v3}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2
    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-virtual {v7, p1}, Lsk/mimac/slideshow/csv/FileDataParser;->parseCsv(Ljava/io/InputStream;)V
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
    sget-object p3, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Won\'t unpack WebDAV folder \'{}\': {}"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, v2, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->skipped(I)Lsk/mimac/slideshow/downloader/DownloadStatistics;

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
    const-string v3, ""

    invoke-static {v0}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;->access$100(Lsk/mimac/slideshow/downloader/SftpCloudGrabber$EntrySelector;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lsk/mimac/slideshow/downloader/SftpCloudGrabber;->downloadFilesNested(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/csv/FileDataParser;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v6, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_4

    invoke-virtual {p0, v6}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->deleteFiles(Ljava/util/Set;)V

    :cond_4
    invoke-virtual {v7}, Lsk/mimac/slideshow/csv/FileDataParser;->finalizeProcessing()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SFTP"

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "sftp"

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
