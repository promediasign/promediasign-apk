.class public abstract Lsk/mimac/slideshow/http/Responder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final LOG:Lorg/slf4j/Logger;


# instance fields
.field protected final isLocalhost:Z

.field protected params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

.field protected final user:Lsk/mimac/slideshow/database/entity/AccessUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/http/Responder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/database/entity/AccessUser;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    iput-boolean p2, p0, Lsk/mimac/slideshow/http/Responder;->isLocalhost:Z

    return-void
.end method

.method private communicationTunnel()Ljava/lang/String;
    .locals 4

    const-string v0, "deviceMid"

    const-string v1, "redirect:http://"

    :try_start_0
    iget-object v2, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lsk/mimac/slideshow/communication/TunnelHttpServer;->startServer(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getNetworkInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v1, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    iget-object v2, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Can\'t start HTTP tunnel to {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<div class=\'errorBubble\'>Tunnel couldn\'t be created, please check the logs</div>"

    return-object v0
.end method

.method public static createResponse(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/AccessUser;ZLjava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/database/entity/AccessUser;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .line 2
    const-string v0, "redirect:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT_SEE_OTHER:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "text/plain"

    const-string p3, ""

    invoke-static {p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "location"

    invoke-virtual {p1, p2, p0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Lsk/mimac/slideshow/http/HtmlTemplate;

    const-string v1, "tunneled"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lsk/mimac/slideshow/http/HtmlTemplate;-><init>(Lsk/mimac/slideshow/database/entity/AccessUser;ZZ)V

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/http/HtmlTemplate;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "text/html"

    invoke-static {p1, p2, p0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0
.end method

.method private deleteScreenLayout(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayout()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getAllForLayout(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->delete(J)V

    :cond_1
    const-string p1, "redirect:/screen_layout"

    return-object p1
.end method

.method private downloadBackup(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    const-string v0, "media_files"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Content-Disposition"

    const-string v2, "description"

    if-eqz v0, :cond_0

    const-string v0, "slideshow-backup"

    const-string v3, ".zip"

    invoke-static {v0, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v5, "configuration.xml"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lsk/mimac/slideshow/config/BackupService;->exportToXml(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    new-instance p1, Ljava/io/File;

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {p1, v2, v3}, Lsk/mimac/slideshow/http/Responder;->zipFolder(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v3, "application/zip"

    invoke-static {p1, v3, v2}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    const-string v2, "attachment; filename=\"slideshow-config-files-backup.zip\""

    invoke-virtual {p1, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, LB/c;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, LB/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->setAfterClosed(Ljava/lang/Runnable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lsk/mimac/slideshow/config/BackupService;->exportToXml(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "text/xml"

    invoke-static {v0, p1, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    const-string v0, "attachment; filename=\"slideshow-config-backup.xml\""

    invoke-virtual {p1, v1, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private dropboxCallback()Ljava/lang/String;
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Received response for Dropbox callback"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-static {v0}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->notifyCode(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><head><meta charset=\'utf-8\'></head><body><center><b style=\'font-size: 2em;\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cloud_grabber_login_success_screen"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Dropbox"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b></center></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getItemThreadForPanel()Lsk/mimac/slideshow/gui/ItemThread;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    const-string v1, "panelId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    const-string v2, "panelName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThread(I)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThread(Ljava/lang/String;)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    return-object v0
.end method

.method private getReboot()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<h2>"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "reboot"

    .line 9
    .line 10
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "</h2>"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "reload_question"

    .line 23
    .line 24
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " <span class=\'button\' onclick=\'reload();\'>"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "reload"

    .line 37
    .line 38
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "</span><br><i>"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, "reload_info"

    .line 51
    .line 52
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "</i><br><br>"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 69
    .line 70
    const-string v2, "<div class=\'infoBubble\'>"

    .line 71
    .line 72
    const-string v3, "not_rooted_warning"

    .line 73
    .line 74
    const-string v4, "</div><br>"

    .line 75
    .line 76
    invoke-static {v0, v2, v3, v4}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    const-string v2, "reboot_question"

    .line 80
    .line 81
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, " <span class=\'button\' onclick=\'reboot();\'>"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, "reboot_device"

    .line 94
    .line 95
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, "reboot_info"

    .line 106
    .line 107
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, "</i>"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0
.end method

.method private getStatistics()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<h2>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statistics"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</h2><p><i>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "statistics_help"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</i></p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/item/ItemCounter;->getHTML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThreads()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<h2>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "threads"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</h2>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    const-string v4, "<b>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "thread"

    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->isDaemon()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_0

    const-string v4, ", daemon"

    goto :goto_1

    :cond_0
    move-object v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v5, ", interrupted"

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")</b><div style=\'font-family: monospace;\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "<br>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "</div><br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private googleDriveCallback()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    const-string v1, "error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    const-string v2, "code"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Received response for Google Drive callback, error={}"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->notifyCode(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><head><meta charset=\'utf-8\'></head><body><center><b style=\'font-size: 2em;\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cloud_grabber_login_success_screen"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Google Drive"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b></center></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private oscStatus()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/osc/OscService;->getInstance()Lsk/mimac/slideshow/osc/OscService;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService;->isStarted()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<style>#ajaxLoading {visibility: hidden}</style><h2>Open Sound Control (OSC)</h2><p><b>Status:</b> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v0, "<span style=\'color:#070\'>Started</span>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v0, "<span style=\'color:#700\'>Not started"

    goto :goto_0

    :goto_1
    const-string v0, "</p><h3>Last messages</h3><p><i>Below is a list of messages received through Open Sound Control interface, the list if refreshed automatically. Burst messages are not recorded here, maximum one message per second.</i></p><table id=\'oscMessages\' class=\'styledTable\'><thead><tr><th>Time</th><th>Address</th><th>Arguments</th></tr></thead><tbody></tbody></table><script>$(function() { checkOscLast(); window.setInterval(checkOscLast, 1000); });</script>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processFileUpload(Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    const-string v0, "UTF-8"

    const-string v1, "encFilename"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "directory"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string p2, ""

    :cond_1
    const-string v2, "file"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "text/plain"

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    :cond_2
    :try_start_0
    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/FileUtils2;->encodeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->ALLOW_UNSUPPORTED_FILE_TYPES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v3}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "unsupported_extension"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v4, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "file_rename_duplicate"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v4, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p2, Lsk/mimac/slideshow/FileConstants;->ARCHIVE_EXTENSIONS:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p2, v0}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    goto :goto_0

    :cond_5
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v3}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    invoke-static {v3, v1}, Lsk/mimac/slideshow/csv/UploadFileChecker;->checkFileName(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "OK"

    invoke-static {p2, v4, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    sget-object v0, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "Can\'t move uploaded file \'{}\' to \'{}\'"

    invoke-interface {v0, p1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {p1, v4, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "Missing file"

    goto :goto_2
.end method

.method public static rebootOk()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reboot()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<div class=\'errorBubble\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "reboot_unsuccess"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " </div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static reloadOk()Ljava/lang/String;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Reloading application"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reloadApp()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<div class=\'errorBubble\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "reload_unsuccess"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " </div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private repeatProvisioning()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lsk/mimac/slideshow/downloader/FileGrabber;->getProvisioningUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Repeating provisioning from URL {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "provisioning.zip"

    invoke-static {v3, v0, v1, v2}, Lsk/mimac/slideshow/downloader/FileGrabber;->downloadHttp(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFilesFailed()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "<div class=\'errorBubble\'>Provisioning couldn\'t be repeated, please check the logs</div>"

    return-object v0

    :cond_0
    const-string v0, "<div class=\'errorBubble\'>Provisioning was triggered, please check the logs for details</div>"

    return-object v0
.end method

.method private showFile()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->getItemThreadForPanel()Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "<div class=\'errorBubble\'>Requested panel was not found</div>"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    const-string v2, "length"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    const-string v3, "file"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lsk/mimac/slideshow/database/entity/Item;

    const/4 v4, 0x0

    sget-object v5, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    invoke-direct {v3, v4, v2, v5, v2}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v2, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    invoke-direct {v2, v3, v1, v4}, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Item;Ljava/lang/Integer;Lsk/mimac/slideshow/enums/MusicType;)V

    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Lsk/mimac/slideshow/playlist/PlaylistWrapper;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<div class=\'okBubble\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "show_file_success"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private togglePlayPause()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    const-string v1, "audio"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->pauseOrResume()V

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->isPaused()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    const-string v0, "paused"

    goto :goto_1

    :cond_1
    const-string v0, "playing"

    :goto_1
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<br>&#9199;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zipFolder(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1
    invoke-static {p1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lsk/mimac/slideshow/http/Responder;->zipFolder(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/zip/ZipEntry;

    .line 3
    invoke-static {p1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v3, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createResponse(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lsk/mimac/slideshow/http/Responder;->createResponse(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/AccessUser;ZLjava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public getResponse(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$IHTTPSession;",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    iput-object p4, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/http/Responder;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    const-string v0, "/upload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lsk/mimac/slideshow/http/page/UploadFormPage;

    invoke-direct {p1, p3, p4, p5}, Lsk/mimac/slideshow/http/page/UploadFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    :goto_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->getPage()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    const-string v0, "/database"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lsk/mimac/slideshow/http/page/DatabaseFormPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/DatabaseFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v0, "/shell"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lsk/mimac/slideshow/http/page/ShellFormPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/ShellFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v0, "/password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lsk/mimac/slideshow/http/page/PasswordFormPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-direct {p1, p3, p4, v0}, Lsk/mimac/slideshow/http/page/PasswordFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Lsk/mimac/slideshow/database/entity/AccessUser;)V

    goto :goto_0

    :cond_3
    const-string v0, "/users/edit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lsk/mimac/slideshow/http/page/UserFormPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-direct {p1, p3, p4, v0}, Lsk/mimac/slideshow/http/page/UserFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Lsk/mimac/slideshow/database/entity/AccessUser;)V

    goto :goto_0

    :cond_4
    const-string v0, "/aboutsoftware"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/licensekey"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-instance p1, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;

    invoke-direct {p1, p3, p4, p5}, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "/settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "/certificate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Lsk/mimac/slideshow/http/page/SettingsFormPage;

    invoke-direct {p1, p3, p4, p5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "/playlists"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lsk/mimac/slideshow/http/page/PlaylistsPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-direct {p1, v0, p4}, Lsk/mimac/slideshow/http/page/PlaylistsPage;-><init>(Lsk/mimac/slideshow/database/entity/AccessUser;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "/playlists/edit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lsk/mimac/slideshow/http/page/PlaylistFormPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/PlaylistFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "/playlist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Lsk/mimac/slideshow/http/page/PlaylistContentFormPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/PlaylistContentFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "/playlists/audio/schedule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p1, Lsk/mimac/slideshow/http/page/AudioPlaylistSchedulePage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/AudioPlaylistSchedulePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    :goto_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->getPage()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_c
    const-string v0, "/items"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p1, Lsk/mimac/slideshow/http/page/ItemsPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/http/page/ItemsPage;-><init>(Lsk/mimac/slideshow/database/entity/AccessUser;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "/backup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Lsk/mimac/slideshow/http/page/BackupPage;

    invoke-direct {p1, p3, p4, p5}, Lsk/mimac/slideshow/http/page/BackupPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "/rss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance p1, Lsk/mimac/slideshow/http/page/RssServerPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/RssServerPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "/screen_layout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Lsk/mimac/slideshow/http/page/ScreenLayoutPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-direct {p1, v0, p4}, Lsk/mimac/slideshow/http/page/ScreenLayoutPage;-><init>(Lsk/mimac/slideshow/database/entity/AccessUser;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "/screen_layout/edit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance p1, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto :goto_1

    :cond_11
    const-string v0, "/screen_layout/panel/schedule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p1, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_12
    const-string v0, "/screen_layout/schedule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance p1, Lsk/mimac/slideshow/http/page/ScreenLayoutSchedulePage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/ScreenLayoutSchedulePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_13
    const-string v0, "/screen_layout/sample"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance p1, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "/screen_layout/screensaver"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance p1, Lsk/mimac/slideshow/http/page/ScreenSaverPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/ScreenSaverPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_15
    const-string v0, "/grabber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance p1, Lsk/mimac/slideshow/http/page/GrabberFormPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/GrabberFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_16
    const-string v0, "/file_manager"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance p1, Lsk/mimac/slideshow/http/page/FileManagerPage;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/page/FileManagerPage;-><init>()V

    goto/16 :goto_0

    :cond_17
    const-string v0, "/fonts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance p1, Lsk/mimac/slideshow/http/page/FontsFormPage;

    invoke-direct {p1, p3, p4, p5}, Lsk/mimac/slideshow/http/page/FontsFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_18
    const-string v0, "/users"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance p1, Lsk/mimac/slideshow/http/page/UsersPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/UsersPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_19
    const-string v0, "/log"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance p1, Lsk/mimac/slideshow/http/page/LogPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/LogPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_1a
    const-string v0, "/communication"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lsk/mimac/slideshow/http/page/CommunicationPage;

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p3, p4, p1}, Lsk/mimac/slideshow/http/page/CommunicationPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->getPage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1b
    const-string p1, "/triggers"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_1c

    new-instance p1, Lsk/mimac/slideshow/http/page/TriggersFormPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/TriggersFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_1c
    const-string p1, "/screenshot"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-instance p1, Lsk/mimac/slideshow/http/page/ScreenshotPage;

    invoke-direct {p1, p3, p4}, Lsk/mimac/slideshow/http/page/ScreenshotPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_1d
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_1e

    iget-object p2, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    iget-boolean p3, p0, Lsk/mimac/slideshow/http/Responder;->isLocalhost:Z

    invoke-virtual {p0, p1, p2, p3}, Lsk/mimac/slideshow/http/Responder;->createResponse(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_1e
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "text/html"

    if-ne p3, v0, :cond_2e

    const-string v0, "/reboot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->getReboot()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_1f
    const-string v0, "/statistic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->getStatistics()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_20
    const-string v0, "/threads"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lsk/mimac/slideshow/http/Responder;->getThreads()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_21
    const-string v0, "/playlist/delete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object p1

    const-string v0, "playlist"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/database/dao/AbstractDao;->delete(J)V

    const-string p1, "redirect:/playlists"

    goto/16 :goto_3

    :cond_22
    const-string v0, "/screen_layout/delete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p1, "screen_layout"

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/Responder;->deleteScreenLayout(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_23
    const-string v0, "/item/delete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object p1

    const-string v0, "item"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/database/dao/AbstractDao;->delete(J)V

    const-string p1, "redirect:/items"

    goto/16 :goto_3

    :cond_24
    const-string v0, "/public/callback/google_drive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->googleDriveCallback()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_25
    const-string v0, "/public/callback/dropbox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->dropboxCallback()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_26
    const-string v0, "/ajax/downloader"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {}, Lsk/mimac/slideshow/downloader/Downloader;->getLogs()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_27
    const-string v0, "/ajax/reboot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {}, Lsk/mimac/slideshow/http/Responder;->rebootOk()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_28
    const-string v0, "/ajax/reload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {}, Lsk/mimac/slideshow/http/Responder;->reloadOk()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_29
    const-string v0, "/ajax/showfile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->showFile()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_2a
    const-string v0, "/backup/configuration.xsd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-class p1, Lsk/mimac/slideshow/http/Responder;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string p2, "xsd/configuration.xsd"

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p3, "text/xml"

    invoke-static {p2, p3, p1}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_2b
    const-string v0, "/osc/status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->oscStatus()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_2c
    const-string v0, "/communication/screenshot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string p1, "deviceMid"

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "screenshot"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lsk/mimac/slideshow/communication/CommunicationService;->sendCommandWithResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object p1

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    int-to-long p4, p1

    const-string p1, "image/jpeg"

    invoke-static {p2, p1, p3, p4, p5}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_2d
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "error"

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_2e
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne p3, v0, :cond_33

    const-string v0, "/ajax/togglePlayPause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->togglePlayPause()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_2f
    const-string v0, "/upload_file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0, p5, p4}, Lsk/mimac/slideshow/http/Responder;->processFileUpload(Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_30
    const-string v0, "/communication/tunnel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->communicationTunnel()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_31
    const-string v0, "/backup/download"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0, p4}, Lsk/mimac/slideshow/http/Responder;->downloadBackup(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_32
    const-string p4, "/ajax/provisioning"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_33

    iget-object p4, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p4}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p4

    if-eqz p4, :cond_33

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-direct {p0}, Lsk/mimac/slideshow/http/Responder;->repeatProvisioning()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_33
    :goto_3
    if-eqz p1, :cond_34

    iget-object p2, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    iget-boolean p3, p0, Lsk/mimac/slideshow/http/Responder;->isLocalhost:Z

    invoke-virtual {p0, p1, p2, p3}, Lsk/mimac/slideshow/http/Responder;->createResponse(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_34
    invoke-virtual {p0, p2, p3, p5}, Lsk/mimac/slideshow/http/Responder;->getResponseInternal(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public abstract getResponseInternal(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation
.end method
