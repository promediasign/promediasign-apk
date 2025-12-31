.class public Lsk/mimac/slideshow/network/WiFiLockHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private wifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lock(Landroid/net/wifi/WifiManager;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->KEEP_WIFI_ON:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const-string v1, "sk.mimac.slideshow"

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    :cond_2
    iget-object p1, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_3
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    iput-object v1, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    iput-object v1, p0, Lsk/mimac/slideshow/network/WiFiLockHolder;->wifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    :cond_1
    return-void
.end method
