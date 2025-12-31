.class public abstract Lsk/mimac/slideshow/ContextHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CONTEXT:Landroid/content/Context;

.field public static MAIN_SERVICE:Lsk/mimac/slideshow/MainService;

.field public static SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

.field private static deviceId:Ljava/lang/String;

.field private static serialNumber:Ljava/lang/String;


# direct methods
.method public static getDeviceId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/ContextHolder;->deviceId:Ljava/lang/String;

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->serialNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "getprop ro.serialno"

    invoke-static {v0}, Lsk/mimac/slideshow/utils/Shell;->processWithOutput(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Shell$Response;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Shell$Response;->getStdout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sput-object v0, Lsk/mimac/slideshow/ContextHolder;->serialNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :catch_1
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
