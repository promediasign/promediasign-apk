.class Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/downloader/DropboxGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVerificationCodeReceiver"
.end annotation


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private waitUnlessSignaled:Ljava/util/concurrent/Semaphore;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/downloader/DropboxGrabber$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->notify(Ljava/util/Map;)V

    return-void
.end method

.method private notify(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->params:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->access$600()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "Got notify code from Dropbox, but there is no one waiting for it"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public waitForCode()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->params:Ljava/util/Map;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/dropbox/core/DbxWebAuth;

    invoke-static {}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->access$300()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    invoke-static {}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->access$400()Lcom/dropbox/core/DbxAppInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/DbxWebAuth;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V

    invoke-static {}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->access$200()Lcom/dropbox/core/DbxSessionStore;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/downloader/DropboxGrabber$LocalVerificationCodeReceiver;->params:Ljava/util/Map;

    const-string v3, "http://127.0.0.1:8080/public/callback/dropbox"

    invoke-virtual {v0, v3, v1, v2}, Lcom/dropbox/core/DbxWebAuth;->finishFromRedirect(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lcom/dropbox/core/DbxAuthFinish;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "accessToken"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "refreshToken"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxAuthFinish;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "expiresAt"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxAuthFinish;->getExpiresAt()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->access$500()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "User authorization failed, no response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted while waiting for code"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
