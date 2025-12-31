.class Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVerificationCodeReceiver"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private waitUnlessSignaled:Ljava/util/concurrent/Semaphore;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->notifyCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->error:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->access$200()Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Got notify code from Google Auth, but there is no one waiting for it"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getRedirectUri()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "http://127.0.0.1"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getActualHttpPort()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v1, ":8080"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getActualHttpPort()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    const-string v2, "/public/callback/google_drive"

    .line 41
    .line 42
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->access$200()Lorg/slf4j/Logger;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "Using Google Drive login redirect URL: {}"

    .line 51
    .line 52
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    :cond_0
    return-void
.end method

.method public waitForCode()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->error:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->code:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No authorization code received within the time limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User authorization failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted while waiting for code"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
