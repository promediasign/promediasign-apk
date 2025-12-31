.class public Lsk/mimac/slideshow/HdmiAudioListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private lastReceived:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/HdmiAudioListener;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/HdmiAudioListener;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsk/mimac/slideshow/HdmiAudioListener;->lastReceived:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->REBOOT_ON_HDMI_PLUG_IN:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-wide p1, p0, Lsk/mimac/slideshow/HdmiAudioListener;->lastReceived:J

    sub-long p1, v0, p1

    const-wide/16 v2, 0x7d0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    sget-object p1, Lsk/mimac/slideshow/HdmiAudioListener;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Received HDMI Audio plug event with state=1"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iput-wide v0, p0, Lsk/mimac/slideshow/HdmiAudioListener;->lastReceived:J

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reboot()V

    :cond_0
    return-void
.end method
