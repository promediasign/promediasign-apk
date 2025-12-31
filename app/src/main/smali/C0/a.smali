.class public abstract synthetic LC0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/view/Display;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Display;->isHdr()Z

    move-result p0

    return p0
.end method

.method public static synthetic B()Landroid/app/NotificationChannel;
    .locals 4

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "MainServiceChannel"

    const-string v2, "SlideshowNotificationChannel"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static bridge synthetic C(Landroid/app/NotificationChannel;)V
    .locals 1

    .line 1
    const-string v0, "Slideshow channel for background service notification"

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic D(Landroid/app/NotificationChannel;)V
    .locals 1

    .line 1
    const-string v0, "Slideshow channel for foreground service notification"

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/res/Configuration;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/content/res/Configuration;->colorMode:I

    return p0
.end method

.method public static bridge synthetic b(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic h()Landroid/app/NotificationChannel;
    .locals 4

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "BackgroundServiceChannel"

    const-string v2, "SlideshowBackgroundNotificationChannel"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static bridge synthetic i(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/app/job/JobWorkItem;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(I)Landroid/media/AudioFocusRequest$Builder;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    return-object v0
.end method

.method public static bridge synthetic l(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroid/media/AudioFocusRequest;)Landroid/media/AudioFocusRequest$Builder;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p0}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    return-object v0
.end method

.method public static bridge synthetic p(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/io/FileDescriptor;)Landroid/media/MediaMuxer;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public static bridge synthetic r(Landroidx/core/app/JobIntentService$JobServiceEngineImpl;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t()V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    return-void
.end method

.method public static bridge synthetic u(Landroid/app/Notification$Builder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static bridge synthetic v(Landroid/app/NotificationChannel;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    return-void
.end method

.method public static bridge synthetic x(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic y(Landroid/content/res/Configuration;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/content/res/Configuration;->colorMode:I

    return-void
.end method

.method public static bridge synthetic z(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    return-void
.end method
