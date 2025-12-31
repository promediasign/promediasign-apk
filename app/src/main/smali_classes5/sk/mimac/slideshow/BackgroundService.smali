.class public Lsk/mimac/slideshow/BackgroundService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/BackgroundService$PingBroadcastReceiver;,
        Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;
    }
.end annotation


# instance fields
.field private lastContact:J

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lsk/mimac/slideshow/BackgroundService;->lastContact:J

    return-void
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/BackgroundService;)J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/BackgroundService;->lastContact:J

    return-wide v0
.end method

.method public static synthetic access$202(Lsk/mimac/slideshow/BackgroundService;J)J
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/BackgroundService;->lastContact:J

    return-wide p1
.end method

.method private getBackgroundServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsk/mimac/slideshow/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsk/mimac/slideshow/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "START_ALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {p0, v0}, LC0/a;->x(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const-string p1, "BackgroundService"

    const-string p2, "Starting background service"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    invoke-static {}, LC0/a;->h()Landroid/app/NotificationChannel;

    move-result-object p2

    invoke-static {p2}, LC0/a;->v(Landroid/app/NotificationChannel;)V

    invoke-static {p2}, LC0/a;->C(Landroid/app/NotificationChannel;)V

    invoke-static {p0}, LA/a;->i(Lsk/mimac/slideshow/BackgroundService;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    invoke-static {p3, p2}, Lf/a;->p(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    const-string p3, "BackgroundServiceChannel"

    invoke-direct {p2, p0, p3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsk/mimac/slideshow/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - Watchdog"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const-string p3, "Background watchdog service is running"

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsk/mimac/slideshow/R$drawable;->logo:I

    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    sget v0, Lsk/mimac/slideshow/R$drawable;->logo:I

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const-string v0, "START_CONDITIONAL"

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/BackgroundService;->getBackgroundServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0xc000000

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSilent(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const/16 v0, 0x22

    iput v0, p2, Landroid/app/Notification;->flags:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    iget-object p2, p0, Lsk/mimac/slideshow/BackgroundService;->timer:Ljava/util/Timer;

    if-nez p2, :cond_1

    const-string p2, "Starting timer"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lsk/mimac/slideshow/BackgroundService$PingBroadcastReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lsk/mimac/slideshow/BackgroundService$PingBroadcastReceiver;-><init>(Lsk/mimac/slideshow/BackgroundService;Lsk/mimac/slideshow/BackgroundService$1;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "sk.mimac.slideshow.BackgroundService.PING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lsk/mimac/slideshow/BackgroundService;->timer:Ljava/util/Timer;

    new-instance v3, Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;

    invoke-direct {v3, p0, p2}, Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;-><init>(Lsk/mimac/slideshow/BackgroundService;Lsk/mimac/slideshow/BackgroundService$1;)V

    const-wide/32 v4, 0x8ca0

    const-wide/32 v6, 0x9088

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return p3
.end method
