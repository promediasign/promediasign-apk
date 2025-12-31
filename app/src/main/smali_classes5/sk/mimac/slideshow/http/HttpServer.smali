.class public Lsk/mimac/slideshow/http/HttpServer;
.super Lfi/iki/elonen/NanoWSD;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_HTTPS_PORT:I = 0x20fb

.field public static final DEFAULT_HTTP_PORT:I = 0x1f90

.field private static final LOG:Lorg/slf4j/Logger;

.field private static final PORT_ROOT_THRESHOLD:I = 0x400

.field private static final RESOURCE_ETAG:Ljava/lang/String;

.field private static actualHttpPort:Ljava/lang/String;

.field private static actualHttpsPort:Ljava/lang/String;

.field private static httpInstance:Lsk/mimac/slideshow/http/HttpServer;

.field private static httpsInstance:Lsk/mimac/slideshow/http/HttpServer;

.field private static internalHttpPort:I

.field private static internalHttpsPort:I


# instance fields
.field private final authenticator:Lsk/mimac/slideshow/http/Authenticator;

.field private final homeDir:Ljava/io/File;

.field private justRedirect:Z

.field private final mediaUtils:Lsk/mimac/slideshow/utils/MediaUtils;

.field private final webdavService:Lsk/mimac/slideshow/http/webdav/WebdavService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/http/HttpServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->BUILD_DATE:Ljava/lang/String;

    sput-object v0, Lsk/mimac/slideshow/http/HttpServer;->RESOURCE_ETAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ZILsk/mimac/slideshow/http/Authenticator;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "localhost"

    :goto_0
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoWSD;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/io/File;

    sget-object p2, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lsk/mimac/slideshow/http/HttpServer;->homeDir:Ljava/io/File;

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMediaUtils()Lsk/mimac/slideshow/utils/MediaUtils;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/http/HttpServer;->mediaUtils:Lsk/mimac/slideshow/utils/MediaUtils;

    invoke-static {}, Lsk/mimac/slideshow/http/webdav/WebdavService;->getInstance()Lsk/mimac/slideshow/http/webdav/WebdavService;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/http/HttpServer;->webdavService:Lsk/mimac/slideshow/http/webdav/WebdavService;

    iput-object p3, p0, Lsk/mimac/slideshow/http/HttpServer;->authenticator:Lsk/mimac/slideshow/http/Authenticator;

    return-void
.end method

.method public static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static getActualHttpPort()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->actualHttpPort:Ljava/lang/String;

    return-object v0
.end method

.method public static getActualHttpsPort()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->actualHttpsPort:Ljava/lang/String;

    return-object v0
.end method

.method private getCookieAuth(Lfi/iki/elonen/NanoHTTPD$CookieHandler;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$CookieHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "tunneled"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "__TUNNEL_SESSION_ID__"

    goto :goto_0

    :cond_0
    const-string p2, "__SESSION_ID__"

    :goto_0
    invoke-virtual {p1, p2}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getExpiresDate(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpInstance()Lsk/mimac/slideshow/http/HttpServer;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->httpInstance:Lsk/mimac/slideshow/http/HttpServer;

    return-object v0
.end method

.method public static getInternalHttpPort()I
    .locals 1

    sget v0, Lsk/mimac/slideshow/http/HttpServer;->internalHttpPort:I

    return v0
.end method

.method public static getInternalHttpsPort()I
    .locals 1

    sget v0, Lsk/mimac/slideshow/http/HttpServer;->internalHttpsPort:I

    return v0
.end method

.method private getResponseWithHeader(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    const-string v0, "text/plain"

    invoke-static {p1, v0, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private getThumb(Ljava/lang/String;I)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/HttpServer;->mediaUtils:Lsk/mimac/slideshow/utils/MediaUtils;

    invoke-virtual {v0, p1, p2}, Lsk/mimac/slideshow/utils/MediaUtils;->createThumb(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "image/jpeg"

    invoke-static {v0, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    const-string v1, "Cache-Control"

    const-string v2, "private"

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Expires"

    const/16 v2, 0x12c

    invoke-static {v2}, Lsk/mimac/slideshow/http/HttpServer;->getExpiresDate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_1

    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t create thumb for \'{}\': "

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "text/plain"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private static newFixedFileResponse(Ljava/io/File;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 4

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    int-to-long v2, p0

    invoke-static {v0, p1, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    const-string p1, "Accept-Ranges"

    const-string v0, "bytes"

    invoke-virtual {p0, p1, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private processJustRedirect(Ljava/lang/String;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x3a

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ltz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "https://"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget-object p2, Lsk/mimac/slideshow/http/HttpServer;->actualHttpsPort:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/HttpServer;->redirectTo(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_1
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 50
    .line 51
    const-string p2, "text/plain"

    .line 52
    .line 53
    const-string v0, "Use HTTPS to access the web interface"

    .line 54
    .line 55
    invoke-static {p1, p2, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private processLogin(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    new-instance v0, Lsk/mimac/slideshow/http/page/LoginFormPage;

    iget-object v1, p0, Lsk/mimac/slideshow/http/HttpServer;->authenticator:Lsk/mimac/slideshow/http/Authenticator;

    invoke-direct {v0, v1, p1, p2, p3}, Lsk/mimac/slideshow/http/page/LoginFormPage;-><init>(Lsk/mimac/slideshow/http/Authenticator;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->getPage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, p3}, Lsk/mimac/slideshow/http/Responder;->createResponse(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/AccessUser;ZLjava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-virtual {v0}, Lsk/mimac/slideshow/http/page/LoginFormPage;->getCookie()Lsk/mimac/slideshow/http/HttpCookie;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "Set-Cookie"

    invoke-virtual {p2}, Lsk/mimac/slideshow/http/HttpCookie;->getHTTPHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private redirectTo(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 1
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT_SEE_OTHER:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "Redirecting...\r\n"

    const-string v2, "location"

    invoke-direct {p0, v0, v1, v2, p1}, Lsk/mimac/slideshow/http/HttpServer;->getResponseWithHeader(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private redirectTo(Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/HttpServer;->redirectTo(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0, p2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static resolveMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, "application/octet-stream"

    if-ltz v0, :cond_1

    sget-object v2, Lsk/mimac/slideshow/http/MimeType;->MIME_TYPES:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private serveFile(Ljava/lang/String;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/http/HttpServer;->homeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "text/plain"

    if-nez v0, :cond_0

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "INTERNAL ERRROR: given homeDir is not a directory."

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "../"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "File not found."

    invoke-static {p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lsk/mimac/slideshow/http/HttpServer;->homeDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lsk/mimac/slideshow/http/HttpServer;->serveFileInternal(Ljava/io/File;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public static serveFileInternal(Ljava/io/File;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    const-string v3, "bytes */"

    const-string v4, "bytes "

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "text/plain"

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v7, v6

    goto/16 :goto_a

    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsk/mimac/slideshow/http/HttpServer;->resolveMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "range"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, -0x1

    if-eqz v8, :cond_3

    const-string v15, "bytes="

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x2d

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v15, :cond_2

    :try_start_1
    invoke-virtual {v8, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v15, v9

    :try_start_2
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object v7, v6

    goto/16 :goto_8

    :catch_1
    :cond_2
    const-wide/16 v16, 0x0

    :catch_2
    :goto_0
    move-wide/from16 v9, v16

    goto :goto_1

    :cond_3
    const-wide/16 v9, 0x0

    :goto_1
    :try_start_3
    const-string v15, "if-range"

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_5

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v15, 0x1

    :goto_3
    const-string v11, "if-none-match"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v11, "*"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/16 v16, 0x1

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "Content-Range"

    move-object/from16 v17, v3

    const-string v3, "Content-Length"

    move-object/from16 v20, v6

    const-string v6, "ETag"

    if-eqz v15, :cond_b

    if-eqz v8, :cond_b

    const-wide/16 v18, 0x0

    cmp-long v21, v9, v18

    if-ltz v21, :cond_b

    cmp-long v21, v9, v11

    if-gez v21, :cond_b

    if-eqz v16, :cond_8

    :try_start_4
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, v5, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_3
    move-object/from16 v7, v20

    goto/16 :goto_8

    :cond_8
    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x0

    cmp-long v8, v13, v17

    if-gez v8, :cond_9

    sub-long v13, v11, v15

    :cond_9
    sub-long v21, v13, v9

    add-long v21, v21, v15

    cmp-long v8, v21, v17

    move-object/from16 p1, v6

    if-gez v8, :cond_a

    move-wide/from16 v23, v17

    move-object/from16 v18, v7

    move-wide/from16 v6, v23

    goto :goto_5

    :cond_a
    move-object/from16 v18, v7

    move-wide/from16 v6, v21

    :goto_5
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-virtual {v8, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, v5, v8, v6, v7}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    const-string v5, "Accept-Ranges"

    const-string v15, "bytes"

    invoke-virtual {v0, v5, v15}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p1

    move-object/from16 v4, v18

    invoke-virtual {v0, v6, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1

    :cond_b
    move-object v4, v7

    if-eqz v15, :cond_c

    if-eqz v8, :cond_c

    cmp-long v7, v9, v11

    if-ltz v7, :cond_c

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v7, v20

    :try_start_9
    invoke-static {v0, v7, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v0, v6, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    move-object/from16 v7, v20

    if-nez v8, :cond_d

    if-nez v16, :cond_e

    :cond_d
    if-nez v15, :cond_f

    if-eqz v16, :cond_f

    :cond_e
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, v5, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_7

    :cond_f
    invoke-static {v0, v5}, Lsk/mimac/slideshow/http/HttpServer;->newFixedFileResponse(Ljava/io/File;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_4
    :goto_8
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "FORBIDDEN: Reading file failed."

    invoke-static {v0, v7, v1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    :goto_9
    return-object v0

    :goto_a
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "File not found."

    invoke-static {v0, v7, v1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private serveResource(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-static {p1}, Lsk/mimac/slideshow/http/HttpServer;->resolveMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-none-match"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v1, "public, max-age=1200"

    const-string v2, "Cache-Control"

    const-string v3, "t"

    const-string v4, "ETag"

    if-eqz p3, :cond_2

    const-string v5, "*"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lsk/mimac/slideshow/http/HttpServer;->RESOURCE_ETAG:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p3, ""

    invoke-static {p1, v0, p3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    sget-object p3, Lsk/mimac/slideshow/http/HttpServer;->RESOURCE_ETAG:Ljava/lang/String;

    invoke-virtual {p1, v4, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v2, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-char p3, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    invoke-virtual {p1, p3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x3f

    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    invoke-virtual {p1, v5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string p3, "../"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v5, "File not found."

    const-string v6, "text/plain"

    if-eqz p3, :cond_4

    :goto_0
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v6, v5}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_4
    const-class p3, Lsk/mimac/slideshow/http/HttpServer;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    sget-object p3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p3, v0, p1}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    sget-object p3, Lsk/mimac/slideshow/http/HttpServer;->RESOURCE_ETAG:Ljava/lang/String;

    invoke-virtual {p1, v4, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1, v2, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object p1
.end method

.method public static setActualHttpPort(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lsk/mimac/slideshow/http/HttpServer;->actualHttpPort:Ljava/lang/String;

    return-void
.end method

.method public static setActualHttpsPort(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lsk/mimac/slideshow/http/HttpServer;->actualHttpsPort:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized startServer(Z)V
    .locals 8

    const-string v0, ":"

    const-string v1, ":"

    const-class v2, Lsk/mimac/slideshow/http/HttpServer;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lsk/mimac/slideshow/http/Authenticator;

    invoke-direct {v3}, Lsk/mimac/slideshow/http/Authenticator;-><init>()V

    sget-object v4, Lsk/mimac/slideshow/http/HttpServer;->httpInstance:Lsk/mimac/slideshow/http/HttpServer;

    const/16 v5, 0x400

    if-nez v4, :cond_1

    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->HTTP_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v4}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lsk/mimac/slideshow/http/HttpServer;->internalHttpPort:I

    if-gt v4, v5, :cond_0

    const/16 v4, 0x1f90

    :cond_0
    invoke-static {v4}, Lsk/mimac/slideshow/WebService;->getNextFreePort(I)I

    move-result v4

    sput v4, Lsk/mimac/slideshow/http/HttpServer;->internalHttpPort:I

    new-instance v6, Lsk/mimac/slideshow/http/HttpServer;

    invoke-direct {v6, p0, v4, v3}, Lsk/mimac/slideshow/http/HttpServer;-><init>(ZILsk/mimac/slideshow/http/Authenticator;)V

    sput-object v6, Lsk/mimac/slideshow/http/HttpServer;->httpInstance:Lsk/mimac/slideshow/http/HttpServer;

    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->DISABLE_NON_SSL_INTERFACES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v4}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v4

    iput-boolean v4, v6, Lsk/mimac/slideshow/http/HttpServer;->justRedirect:Z

    sget-object v4, Lsk/mimac/slideshow/http/HttpServer;->httpInstance:Lsk/mimac/slideshow/http/HttpServer;

    invoke-virtual {v4}, Lfi/iki/elonen/NanoHTTPD;->start()V

    sget-object v4, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v6, "HTTP server successfully started on internal port {}"

    sget v7, Lsk/mimac/slideshow/http/HttpServer;->internalHttpPort:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lsk/mimac/slideshow/http/HttpServer;->actualHttpPort:Ljava/lang/String;

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lsk/mimac/slideshow/http/HttpServer;->internalHttpPort:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lsk/mimac/slideshow/http/HttpServer;->actualHttpPort:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v4, "HTTP server is already running"

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_2
    :goto_0
    sget-object v1, Lsk/mimac/slideshow/http/HttpServer;->httpsInstance:Lsk/mimac/slideshow/http/HttpServer;

    if-nez v1, :cond_4

    if-eqz p0, :cond_4

    sget-object p0, Lsk/mimac/slideshow/settings/UserSettings;->HTTPS_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lsk/mimac/slideshow/http/HttpServer;->internalHttpsPort:I

    if-gt p0, v5, :cond_3

    const/16 p0, 0x20fb

    :cond_3
    invoke-static {p0}, Lsk/mimac/slideshow/WebService;->getNextFreePort(I)I

    move-result p0

    sput p0, Lsk/mimac/slideshow/http/HttpServer;->internalHttpsPort:I

    new-instance v1, Lsk/mimac/slideshow/http/HttpServer;

    const/4 v4, 0x1

    invoke-direct {v1, v4, p0, v3}, Lsk/mimac/slideshow/http/HttpServer;-><init>(ZILsk/mimac/slideshow/http/Authenticator;)V

    sput-object v1, Lsk/mimac/slideshow/http/HttpServer;->httpsInstance:Lsk/mimac/slideshow/http/HttpServer;

    invoke-static {}, Lsk/mimac/slideshow/utils/CertificateUtils;->getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    move-result-object p0

    invoke-virtual {v1, p0}, Lfi/iki/elonen/NanoHTTPD;->setServerSocketFactory(Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;)V

    sget-object p0, Lsk/mimac/slideshow/http/HttpServer;->httpsInstance:Lsk/mimac/slideshow/http/HttpServer;

    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->start()V

    sget-object p0, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "HTTPS server successfully started on internal port {}"

    sget v3, Lsk/mimac/slideshow/http/HttpServer;->internalHttpsPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lsk/mimac/slideshow/http/HttpServer;->actualHttpsPort:Ljava/lang/String;

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lsk/mimac/slideshow/http/HttpServer;->internalHttpsPort:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsk/mimac/slideshow/http/HttpServer;->actualHttpsPort:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object p0, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v0, "HTTPS server is already running"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2

    throw p0
.end method

.method public static stopServer()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->httpInstance:Lsk/mimac/slideshow/http/HttpServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->stop()V

    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "HTTP server successfully stopped"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sput-object v1, Lsk/mimac/slideshow/http/HttpServer;->httpInstance:Lsk/mimac/slideshow/http/HttpServer;

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->httpsInstance:Lsk/mimac/slideshow/http/HttpServer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->stop()V

    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "HTTPS server successfully stopped"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sput-object v1, Lsk/mimac/slideshow/http/HttpServer;->httpsInstance:Lsk/mimac/slideshow/http/HttpServer;

    :cond_1
    return-void
.end method


# virtual methods
.method public getTunnelHandler(Ludt/UDTInputStream;Ludt/UDTOutputStream;Ljava/net/InetAddress;)Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;-><init>(Lsk/mimac/slideshow/http/HttpServer;Ludt/UDTInputStream;Ludt/UDTOutputStream;Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;
    .locals 7

    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v2

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    const-string v1, "WS handshake parameters={}, method={}, headers={}, uri={}"

    invoke-interface {v0, v1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getCookies()Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    move-result-object v0

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/http/HttpServer;->getCookieAuth(Lfi/iki/elonen/NanoHTTPD$CookieHandler;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/http/HttpServer;->authenticator:Lsk/mimac/slideshow/http/Authenticator;

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "authorization"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsk/mimac/slideshow/http/Authenticator;->authenticate(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lsk/mimac/slideshow/PlatformDependentFactory;->getWsResponder(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 12

    .line 1
    const-string v0, "/login?redirect="

    .line 2
    .line 3
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "remote-addr"

    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "127.0.0.1"

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-boolean v3, p0, Lsk/mimac/slideshow/http/HttpServer;->justRedirect:Z

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-direct {p0, v7, v1}, Lsk/mimac/slideshow/http/HttpServer;->processJustRedirect(Ljava/lang/String;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    const-string v3, "/webdav"

    .line 35
    .line 36
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_11

    .line 41
    .line 42
    const-string v3, "/DavWWWRoot"

    .line 43
    .line 44
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-instance v6, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const-string v5, "text/plain"

    .line 68
    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    :cond_2
    :try_start_0
    invoke-interface {p1, v6}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    const-string v3, "/web/"

    .line 87
    .line 88
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    invoke-direct {p0, v7, v8, v1}, Lsk/mimac/slideshow/http/HttpServer;->serveResource(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_4
    const-string v3, "/weather-icons/"

    .line 100
    .line 101
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_5

    .line 106
    .line 107
    const-string p1, "/weather/"

    .line 108
    .line 109
    invoke-virtual {v7, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1, v8, v1}, Lsk/mimac/slideshow/http/HttpServer;->serveResource(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :cond_5
    const-string v3, "/favicon.ico"

    .line 119
    .line 120
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    const-string p1, "/web/favicon.ico"

    .line 127
    .line 128
    invoke-direct {p0, p1, v8, v1}, Lsk/mimac/slideshow/http/HttpServer;->serveResource(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    :cond_6
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getCookies()Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-direct {p0, v3, v1}, Lsk/mimac/slideshow/http/HttpServer;->getCookieAuth(Lfi/iki/elonen/NanoHTTPD$CookieHandler;Ljava/util/Map;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget-object v9, p0, Lsk/mimac/slideshow/http/HttpServer;->authenticator:Lsk/mimac/slideshow/http/Authenticator;

    .line 142
    .line 143
    const-string v10, "authorization"

    .line 144
    .line 145
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    check-cast v10, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v9, v10, v3}, Lsk/mimac/slideshow/http/Authenticator;->authenticate(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    const-string v10, "/login"

    .line 156
    .line 157
    if-nez v9, :cond_c

    .line 158
    .line 159
    const-string v11, "/public/"

    .line 160
    .line 161
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    if-nez v11, :cond_c

    .line 166
    .line 167
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p0, v4, v8, p1}, Lsk/mimac/slideshow/http/HttpServer;->processLogin(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    return-object p1

    .line 182
    :cond_7
    if-eqz v2, :cond_8

    .line 183
    .line 184
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v1, "access_denied"

    .line 192
    .line 193
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, "\r\n"

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v1, "WWW-Authenticate"

    .line 210
    .line 211
    const-string v2, "Basic realm=\"Promedia Sign\""

    .line 212
    .line 213
    invoke-direct {p0, p1, v0, v1, v2}, Lsk/mimac/slideshow/http/HttpServer;->getResponseWithHeader(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1

    .line 218
    :cond_8
    const-string v1, "/dashboard"

    .line 219
    .line 220
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_9

    .line 225
    .line 226
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 227
    .line 228
    const-string v0, "Refresh the page and login"

    .line 229
    .line 230
    invoke-static {p1, v5, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    return-object p1

    .line 235
    :cond_9
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    if-eqz v1, :cond_a

    .line 240
    .line 241
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 246
    .line 247
    if-ne v1, v2, :cond_a

    .line 248
    .line 249
    const/4 v1, 0x1

    .line 250
    goto :goto_0

    .line 251
    :cond_a
    const/4 v1, 0x0

    .line 252
    :goto_0
    invoke-static {v7}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    if-eqz v1, :cond_b

    .line 257
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v3, "?"

    .line 261
    .line 262
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    goto :goto_1

    .line 277
    :cond_b
    const-string p1, ""

    .line 278
    .line 279
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v0, "UTF-8"

    .line 292
    .line 293
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/HttpServer;->redirectTo(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 305
    .line 306
    .line 307
    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    return-object p1

    .line 309
    :catch_0
    move-exception p1

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    .line 311
    .line 312
    const-string v1, "Can\'t find UTF-8"

    .line 313
    .line 314
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_c
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_d

    .line 323
    .line 324
    const-string p1, "/"

    .line 325
    .line 326
    const-string v0, "__SESSION_ID__=deleted; expires=Thu, 01 Jan 1970 00:00:00 GMT"

    .line 327
    .line 328
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/HttpServer;->redirectTo(Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    return-object p1

    .line 333
    :cond_d
    const-string v0, "/logout"

    .line 334
    .line 335
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_e

    .line 340
    .line 341
    iget-object p1, p0, Lsk/mimac/slideshow/http/HttpServer;->authenticator:Lsk/mimac/slideshow/http/Authenticator;

    .line 342
    .line 343
    invoke-virtual {p1, v3}, Lsk/mimac/slideshow/http/Authenticator;->logout(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-direct {p0, v10}, Lsk/mimac/slideshow/http/HttpServer;->redirectTo(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    return-object p1

    .line 351
    :cond_e
    const-string v0, "/slideshow/"

    .line 352
    .line 353
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_f

    .line 358
    .line 359
    invoke-direct {p0, v7, v1}, Lsk/mimac/slideshow/http/HttpServer;->serveFile(Ljava/lang/String;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    return-object p1

    .line 364
    :cond_f
    const-string v0, "/thumb/"

    .line 365
    .line 366
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_10

    .line 371
    .line 372
    const-string p1, "size"

    .line 373
    .line 374
    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    check-cast p1, Ljava/lang/String;

    .line 379
    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    invoke-direct {p0, v7, p1}, Lsk/mimac/slideshow/http/HttpServer;->getThumb(Ljava/lang/String;I)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    return-object p1

    .line 389
    :cond_10
    :try_start_2
    invoke-static {v9, v2}, Lsk/mimac/slideshow/PlatformDependentFactory;->getResponder(Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lsk/mimac/slideshow/http/Responder;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    move-object v2, p1

    .line 394
    move-object v3, v7

    .line 395
    move-object v5, v8

    .line 396
    invoke-virtual/range {v1 .. v6}, Lsk/mimac/slideshow/http/Responder;->getResponse(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 397
    .line 398
    .line 399
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 400
    return-object p1

    .line 401
    :catch_1
    move-exception p1

    .line 402
    sget-object v0, Lsk/mimac/slideshow/http/HttpServer;->LOG:Lorg/slf4j/Logger;

    .line 403
    .line 404
    const-string v1, "Can\'t show webpage \'{}\'"

    .line 405
    .line 406
    invoke-interface {v0, v1, v7, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 410
    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string v2, "<html><head><meta http-equiv=\'content-type\' content=\'text/html; charset=UTF-8\'/><title>Slideshow</title></head><body><h2>Slideshow</h2>"

    .line 414
    .line 415
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const-string v2, "web_page_error"

    .line 419
    .line 420
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v2, "<br><i>"

    .line 428
    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v2, "error_desc"

    .line 433
    .line 434
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v2, ": "

    .line 442
    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string p1, " ("

    .line 454
    .line 455
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string p1, "error_more_info_logs"

    .line 459
    .line 460
    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string p1, ")</i></body></html>"

    .line 468
    .line 469
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    const-string v1, "text/html"

    .line 477
    .line 478
    invoke-static {v0, v1, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    return-object p1

    .line 483
    :catch_2
    move-exception p1

    .line 484
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-static {v0, v5, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    return-object p1

    .line 497
    :catch_3
    move-exception p1

    .line 498
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 499
    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    const-string v2, "SERVER INTERNAL ERROR: "

    .line 503
    .line 504
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-static {v0, v5, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    return-object p1

    .line 523
    :cond_11
    :goto_2
    iget-object v0, p0, Lsk/mimac/slideshow/http/HttpServer;->webdavService:Lsk/mimac/slideshow/http/webdav/WebdavService;

    .line 524
    .line 525
    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/http/webdav/WebdavService;->process(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    return-object p1
.end method
