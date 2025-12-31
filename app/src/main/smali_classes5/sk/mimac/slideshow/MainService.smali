.class public Lsk/mimac/slideshow/MainService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static networkTimer:Ljava/util/Timer;

.field private static running:Z


# instance fields
.field private appStartedNanoTime:J

.field private appWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private audioItemThread:Lsk/mimac/slideshow/gui/AudioItemThread;

.field private final hdmiAudioListener:Lsk/mimac/slideshow/HdmiAudioListener;

.field private final wiFiLockHolder:Lsk/mimac/slideshow/network/WiFiLockHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/MainService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/MainService;->LOG:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lsk/mimac/slideshow/MainService;->running:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/network/WiFiLockHolder;

    invoke-direct {v0}, Lsk/mimac/slideshow/network/WiFiLockHolder;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/MainService;->wiFiLockHolder:Lsk/mimac/slideshow/network/WiFiLockHolder;

    new-instance v0, Lsk/mimac/slideshow/HdmiAudioListener;

    invoke-direct {v0}, Lsk/mimac/slideshow/HdmiAudioListener;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/MainService;->hdmiAudioListener:Lsk/mimac/slideshow/HdmiAudioListener;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lsk/mimac/slideshow/MainService;->appStartedNanoTime:J

    return-void
.end method

.method private getMainServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsk/mimac/slideshow/MainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getNetworkTimer()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/MainService;->networkTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private isSlideshowActivityRunning()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/display/SlideshowActivity;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lsk/mimac/slideshow/MainService;->running:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsk/mimac/slideshow/MainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "START_ALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-static {p0, v0}, LC0/a;->x(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private startWebServer(Z)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lsk/mimac/slideshow/http/HttpServer;->startServer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/MainService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t start web server"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAppUptime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lsk/mimac/slideshow/MainService;->appStartedNanoTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/MainService;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method public getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/MainService;->audioItemThread:Lsk/mimac/slideshow/gui/AudioItemThread;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lsk/mimac/slideshow/ContextHolder;->MAIN_SERVICE:Lsk/mimac/slideshow/MainService;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/MainService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Stopping service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/MainService;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_REPORT_STATISTICS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/item/ItemCounter;->sendStatistics()V

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/MainService;->audioItemThread:Lsk/mimac/slideshow/gui/AudioItemThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/AudioItemThread;->stop()V

    :cond_2
    invoke-static {p0}, Lsk/mimac/slideshow/MountListener;->unregisterMountListener(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le1/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Le1/c;-><init>(I)V

    const-string v2, "ServiceShutdownThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->stop()V

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->stop()V

    invoke-static {}, Lsk/mimac/slideshow/serial/SerialServiceHolder;->stop()V

    invoke-static {}, Lsk/mimac/slideshow/mqtt/MqttService;->stop()V

    sget-object v0, Lsk/mimac/slideshow/MainService;->networkTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3
    iget-object v0, p0, Lsk/mimac/slideshow/MainService;->wiFiLockHolder:Lsk/mimac/slideshow/network/WiFiLockHolder;

    invoke-virtual {v0}, Lsk/mimac/slideshow/network/WiFiLockHolder;->release()V

    :try_start_1
    iget-object v0, p0, Lsk/mimac/slideshow/MainService;->hdmiAudioListener:Lsk/mimac/slideshow/HdmiAudioListener;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/MainService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Error while unregistering receiver: {}"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/MainService;->stop()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x3

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->KEEP_SERVICE_RUNNING:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    invoke-direct {p0}, Lsk/mimac/slideshow/MainService;->isSlideshowActivityRunning()Z

    move-result v2

    sget-object v3, Lsk/mimac/slideshow/MainService;->LOG:Lorg/slf4j/Logger;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "-"

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, p3

    aput-object v5, v0, p2

    const/4 v4, 0x2

    aput-object v6, v0, v4

    const-string v4, "MainService action={}, keepServiceRunning={}, slideshowActivityRunning={}"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "STOP_ALL"

    const-string v4, "START_CONDITIONAL"

    if-eqz p1, :cond_6

    const-string v5, "START_ALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_6

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    :cond_3
    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lsk/mimac/slideshow/display/SlideshowActivity;->getDisplayHelper()Lsk/mimac/slideshow/display/DisplayHelper;

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->exit(Lsk/mimac/slideshow/display/DisplayHelper;)V

    :cond_4
    invoke-virtual {p0}, Lsk/mimac/slideshow/MainService;->stop()V

    :cond_5
    return p2

    :cond_6
    :goto_1
    const-string p1, "Starting service"

    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sput-boolean p2, Lsk/mimac/slideshow/MainService;->running:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lsk/mimac/slideshow/MainService;->appStartedNanoTime:J

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_7

    invoke-static {}, LC0/a;->B()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-static {p1}, LC0/a;->v(Landroid/app/NotificationChannel;)V

    invoke-static {p1}, LC0/a;->D(Landroid/app/NotificationChannel;)V

    invoke-static {p0}, LA/a;->j(Lsk/mimac/slideshow/MainService;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-static {v2, p1}, Lf/a;->p(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_7
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "MainServiceChannel"

    invoke-direct {p1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsk/mimac/slideshow/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v2, "service_is_running"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsk/mimac/slideshow/R$drawable;->logo:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v2, Lsk/mimac/slideshow/R$drawable;->logo:I

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v2, Lsk/mimac/slideshow/R$drawable;->icon_play:I

    const-string v3, "reopen"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lsk/mimac/slideshow/StartupActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0xc000000

    invoke-static {p0, p3, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v2, Lsk/mimac/slideshow/R$drawable;->icon_pause:I

    const-string v3, "stop_all"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/MainService;->getMainServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-direct {p0, v4}, Lsk/mimac/slideshow/MainService;->getMainServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSilent(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    if-eqz v1, :cond_8

    const/16 p3, 0x22

    iput p3, p1, Landroid/app/Notification;->flags:I

    :cond_8
    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    new-instance p1, Ljava/util/Timer;

    const-string p3, "NetworkTimer"

    invoke-direct {p1, p3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    sput-object p1, Lsk/mimac/slideshow/MainService;->networkTimer:Ljava/util/Timer;

    new-instance p1, Ljava/lang/Thread;

    const-string p3, "ServiceStartupThread"

    invoke-direct {p1, p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :try_start_0
    new-instance p1, Landroid/appwidget/AppWidgetHost;

    invoke-direct {p1, p0, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lsk/mimac/slideshow/MainService;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object p3, Lsk/mimac/slideshow/MainService;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Widgets are not supported on this device: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return p2
.end method

.method public run()V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/mqtt/MqttService;->start()V

    invoke-static {}, Lsk/mimac/slideshow/serial/SerialServiceHolder;->start()V

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->start()V

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->start()V

    invoke-static {}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->init()V

    sget-object v0, Lsk/mimac/slideshow/MainService;->networkTimer:Ljava/util/Timer;

    invoke-static {v0}, Lsk/mimac/slideshow/InitializerImpl;->initializeNetworkTimer(Ljava/util/Timer;)V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WEB_SERVICES_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/MainService;->startWebServer(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/MainService;->wiFiLockHolder:Lsk/mimac/slideshow/network/WiFiLockHolder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/network/WiFiLockHolder;->lock(Landroid/net/wifi/WifiManager;)V

    invoke-static {}, Lsk/mimac/slideshow/WebService;->start()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lsk/mimac/slideshow/MainService;->hdmiAudioListener:Lsk/mimac/slideshow/HdmiAudioListener;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lsk/mimac/slideshow/gui/AudioItemThread;

    invoke-direct {v0}, Lsk/mimac/slideshow/gui/AudioItemThread;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/MainService;->audioItemThread:Lsk/mimac/slideshow/gui/AudioItemThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->start()V

    invoke-static {p0}, Lsk/mimac/slideshow/MountListener;->registerMountListener(Landroid/content/Context;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lsk/mimac/slideshow/MainService;->running:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p0}, LA/c;->t(Lsk/mimac/slideshow/MainService;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
