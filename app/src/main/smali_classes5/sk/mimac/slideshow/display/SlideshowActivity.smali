.class public Lsk/mimac/slideshow/display/SlideshowActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/display/DisplayInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static universalTimer:Ljava/util/Timer;


# instance fields
.field private final displayChangeListener:Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;

.field private final displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

.field private displayId:I

.field private displayManager:Landroid/hardware/display/DisplayManager;

.field private presentations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lsk/mimac/slideshow/display/DisplayPresentation;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/display/SlideshowActivity;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;-><init>(Lsk/mimac/slideshow/display/SlideshowActivity;Lsk/mimac/slideshow/display/SlideshowActivity$1;)V

    iput-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayChangeListener:Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;

    new-instance v0, Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/display/DisplayHelper;-><init>(Lsk/mimac/slideshow/display/DisplayInterface;)V

    iput-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    return-void
.end method

.method public static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/display/SlideshowActivity;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/display/SlideshowActivity;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayId:I

    return p0
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/display/SlideshowActivity;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/display/SlideshowActivity;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/display/SlideshowActivity;->startPresentation(Landroid/view/Display;)V

    return-void
.end method

.method public static synthetic access$500(Lsk/mimac/slideshow/display/SlideshowActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->presentations:Ljava/util/Map;

    return-object p0
.end method

.method private checkStartLockTaskMode()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->LOCK_TASK_MODE_AFTER_START:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->startLockTask(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/display/SlideshowActivity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t start lock task mode: {}"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setScreenRotation()V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->SCREEN_ORIENTATION:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/enums/ScreenOrientation;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    sget-object v1, Lsk/mimac/slideshow/display/SlideshowActivity$2;->$SwitchMap$sk$mimac$slideshow$enums$ScreenOrientation:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v1, Lsk/mimac/slideshow/display/SlideshowActivity;->universalTimer:Ljava/util/Timer;

    new-instance v2, Lsk/mimac/slideshow/display/SlideshowActivity$1;

    invoke-direct {v2, p0, v0}, Lsk/mimac/slideshow/display/SlideshowActivity$1;-><init>(Lsk/mimac/slideshow/display/SlideshowActivity;Lsk/mimac/slideshow/enums/ScreenOrientation;)V

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startPresentation(Landroid/view/Display;)V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/display/DisplayPresentation;

    invoke-direct {v0, p0, p1}, Lsk/mimac/slideshow/display/DisplayPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->presentations:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/display/SlideshowActivity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t show presentation on displayId={}: {}"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getDisplayHelper()Lsk/mimac/slideshow/display/DisplayHelper;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->running:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p3}, Lsk/mimac/slideshow/utils/FileCopyUtils;->copyFile(Lsk/mimac/slideshow/display/SlideshowActivity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    invoke-static {p2, p3}, Lsk/mimac/slideshow/network/WiFiHelper;->processConnectionResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/display/SlideshowActivity;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Not initialized, restarting"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    :cond_0
    sput-object p0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    const-string p1, "display"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayManager:Landroid/hardware/display/DisplayManager;

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iput p1, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayId:I

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/display/DisplayHelper;->setDisplayId(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    sget p1, Lsk/mimac/slideshow/R$layout;->main:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lsk/mimac/slideshow/display/SlideshowActivity;->checkStartLockTaskMode()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v0, p1, p2}, Lsk/mimac/slideshow/display/DisplayHelper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/display/DisplayHelper;->onKeyUp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/display/SlideshowActivity;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Pausing activity"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/display/SlideshowActivity;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Resuming activity"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 6

    sget-object v0, Lsk/mimac/slideshow/display/SlideshowActivity;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Starting activity"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lsk/mimac/slideshow/utils/LastStartUtils;->checkAndSet()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->running:Z

    sput-object p0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    new-instance v2, Ljava/util/Timer;

    const-string v3, "UniversalTimer"

    invoke-direct {v2, v3, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lsk/mimac/slideshow/display/SlideshowActivity;->universalTimer:Ljava/util/Timer;

    invoke-static {p0}, Lsk/mimac/slideshow/MainService;->start(Landroid/content/Context;)V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_SERVICE_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lsk/mimac/slideshow/BackgroundService;->start(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/display/SlideshowActivity;->setScreenRotation()V

    iget-object v1, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v1}, Lsk/mimac/slideshow/display/DisplayHelper;->hideAndroidNavigation()V

    iget-object v1, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v1}, Lsk/mimac/slideshow/display/DisplayHelper;->initializeViews()V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getInitializer()Lsk/mimac/slideshow/Initializer;

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/display/SlideshowActivity;->universalTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/Initializer;->setTimers(Ljava/util/Timer;)V

    invoke-static {}, Lsk/mimac/slideshow/UserActivityHolder;->markLastActivity()V

    iget-object v1, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v1}, Lsk/mimac/slideshow/display/DisplayHelper;->getDisplayId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Finished startup for displayId={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->presentations:Ljava/util/Map;

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MULTI_DISPLAY_ALLOW:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iget v5, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayId:I

    if-eq v4, v5, :cond_1

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/display/SlideshowActivity;->startPresentation(Landroid/view/Display;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayChangeListener:Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/display/SlideshowActivity;->universalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayChangeListener:Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->presentations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lh1/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lh1/e;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->presentations:Ljava/util/Map;

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity;->running:Z

    invoke-static {}, Lsk/mimac/slideshow/utils/LastStartUtils;->clear()V

    sget-object v0, Lsk/mimac/slideshow/display/SlideshowActivity;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Stopping activity"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
