.class Lsk/mimac/slideshow/InitializerImpl$6;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/InitializerImpl;->initializeNetworkTimer(Ljava/util/Timer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_REPORT_DATA:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/mqtt/MqttService;->sendDeviceInfo()V

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_REPORT_STATISTICS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/item/ItemCounter;->sendStatistics()V

    :cond_1
    return-void
.end method
