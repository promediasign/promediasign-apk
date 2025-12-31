.class public Lsk/mimac/slideshow/http/page/DeviceOwnerPage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/http/page/DeviceOwnerPage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/page/DeviceOwnerPage;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    return-void
.end method

.method private processPost()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "deviceOwnerSet"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "action_success"

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->setDeviceOwnerApp()V

    :goto_0
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "deviceOwnerUnset"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->clearDeviceOwnerApp()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "deviceAdminUnset"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->clearDeviceAdminApp()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "lockTaskPackagesSet"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->setLockTaskPackages()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "lockTaskStart"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->startLockTask(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "lockTaskStop"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->stopLockTask(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/device_owner"

    return-object v0
.end method

.method public process()V
    .locals 4

    const-string v0, "_ROOT_"

    const-string v1, "Can\'t perform device owner request"

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/DeviceOwnerPage;->processPost()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lsk/mimac/slideshow/http/page/DeviceOwnerPage;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lsk/mimac/slideshow/http/page/DeviceOwnerPage;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isDeviceOwnerApp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isDeviceOwner"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isDeviceAdminApp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isDeviceAdmin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->hasLockTaskPackages()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hasLockTaskPackages"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isLockTask()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isLockTask"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isDeviceAdminApp()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "rooted"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
