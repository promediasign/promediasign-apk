.class public Lsk/mimac/slideshow/http/webdav/WebdavService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static webdavService:Lsk/mimac/slideshow/http/webdav/WebdavService;


# instance fields
.field private final httpManager:Lio/milton/http/HttpManager;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/milton/http/fs/FileSystemResourceFactory;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lsk/mimac/slideshow/http/webdav/WebdavSecurityManager;

    invoke-direct {v2}, Lsk/mimac/slideshow/http/webdav/WebdavSecurityManager;-><init>()V

    const-string v3, "webdav"

    invoke-direct {v0, v1, v2, v3}, Lio/milton/http/fs/FileSystemResourceFactory;-><init>(Ljava/io/File;Lio/milton/http/SecurityManager;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/milton/http/fs/FileSystemResourceFactory;->setAllowDirectoryBrowsing(Z)V

    new-instance v2, Lio/milton/http/fs/SimpleLockManager;

    new-instance v3, Lio/milton/cache/LocalCacheManager;

    invoke-direct {v3}, Lio/milton/cache/LocalCacheManager;-><init>()V

    invoke-direct {v2, v3}, Lio/milton/http/fs/SimpleLockManager;-><init>(Lio/milton/cache/CacheManager;)V

    invoke-virtual {v0, v2}, Lio/milton/http/fs/FileSystemResourceFactory;->setLockManager(Lio/milton/http/LockManager;)V

    new-instance v2, Lio/milton/config/HttpManagerBuilder;

    invoke-direct {v2}, Lio/milton/config/HttpManagerBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lio/milton/config/HttpManagerBuilder;->setEnableBasicAuth(Z)V

    invoke-virtual {v2, v1}, Lio/milton/config/HttpManagerBuilder;->setEnableDigestAuth(Z)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lio/milton/config/HttpManagerBuilder;->setEnableFormAuth(Z)V

    invoke-virtual {v2, v1}, Lio/milton/config/HttpManagerBuilder;->setEnableCookieAuth(Z)V

    invoke-virtual {v2, v1}, Lio/milton/config/HttpManagerBuilder;->setEnabledJson(Z)V

    invoke-virtual {v2, v0}, Lio/milton/config/HttpManagerBuilder;->setResourceFactory(Lio/milton/http/ResourceFactory;)V

    invoke-virtual {v2}, Lio/milton/config/HttpManagerBuilder;->getEventManager()Lio/milton/event/EventManager;

    move-result-object v0

    new-instance v1, Lk1/p;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Lk1/p;-><init>(I)V

    const-class v3, Lio/milton/event/PutEvent;

    invoke-interface {v0, v1, v3}, Lio/milton/event/EventManager;->registerEventListener(Lio/milton/event/EventListener;Ljava/lang/Class;)V

    new-instance v0, Lsk/mimac/slideshow/http/webdav/WebdavService$1;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/http/webdav/WebdavService$1;-><init>(Lsk/mimac/slideshow/http/webdav/WebdavService;)V

    invoke-virtual {v2, v0}, Lio/milton/config/HttpManagerBuilder;->setNonceProvider(Lio/milton/http/http11/auth/NonceProvider;)V

    invoke-virtual {v2}, Lio/milton/config/HttpManagerBuilder;->buildHttpManager()Lio/milton/http/HttpManager;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavService;->httpManager:Lio/milton/http/HttpManager;

    return-void
.end method

.method public static synthetic a(Lio/milton/event/Event;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/http/webdav/WebdavService;->lambda$new$0(Lio/milton/event/Event;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lsk/mimac/slideshow/http/webdav/WebdavService;
    .locals 3

    const-class v0, Lsk/mimac/slideshow/http/webdav/WebdavService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/http/webdav/WebdavService;->webdavService:Lsk/mimac/slideshow/http/webdav/WebdavService;

    if-nez v1, :cond_0

    const-string v1, "org.xml.sax.driver"

    const-string v2, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lsk/mimac/slideshow/http/webdav/WebdavService;

    invoke-direct {v1}, Lsk/mimac/slideshow/http/webdav/WebdavService;-><init>()V

    sput-object v1, Lsk/mimac/slideshow/http/webdav/WebdavService;->webdavService:Lsk/mimac/slideshow/http/webdav/WebdavService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lsk/mimac/slideshow/http/webdav/WebdavService;->webdavService:Lsk/mimac/slideshow/http/webdav/WebdavService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method private static synthetic lambda$new$0(Lio/milton/event/Event;)V
    .locals 0

    check-cast p0, Lio/milton/event/PutEvent;

    invoke-virtual {p0}, Lio/milton/event/PutEvent;->getResource()Lio/milton/resource/Resource;

    move-result-object p0

    check-cast p0, Lio/milton/http/fs/FsFileResource;

    invoke-virtual {p0}, Lio/milton/http/fs/FsResource;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/csv/UploadFileChecker;->checkZipAndFileName(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public process(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;

    invoke-direct {v0}, Lsk/mimac/slideshow/http/webdav/WebdavResponse;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/http/webdav/WebdavService;->httpManager:Lio/milton/http/HttpManager;

    new-instance v2, Lsk/mimac/slideshow/http/webdav/WebdavRequest;

    invoke-direct {v2, p1}, Lsk/mimac/slideshow/http/webdav/WebdavRequest;-><init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V

    invoke-virtual {v1, v2, v0}, Lio/milton/http/HttpManager;->process(Lio/milton/http/Request;Lio/milton/http/Response;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->finalizeResponse()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
