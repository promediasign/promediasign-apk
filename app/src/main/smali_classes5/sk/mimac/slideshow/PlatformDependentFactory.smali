.class public abstract Lsk/mimac/slideshow/PlatformDependentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectToWiFi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->connectToWiFiInternal(Ljava/util/List;)V

    return-void
.end method

.method public static getAllDisplays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/DisplayInfoDto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllDisplaysInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllItemThreads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            "Lsk/mimac/slideshow/gui/ItemThread;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreadsInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getApiService()Lsk/mimac/slideshow/ApiService;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getApiServiceInternal()Lsk/mimac/slideshow/ApiService;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThreadInternal()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableFonts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAvailableFontsInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getCacheDirInternal()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getDeviceIdInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInitializer()Lsk/mimac/slideshow/Initializer;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getInitializerInternal()Lsk/mimac/slideshow/Initializer;

    move-result-object v0

    return-object v0
.end method

.method public static getItemThread(I)Lsk/mimac/slideshow/gui/DisplayItemThread;
    .locals 1

    .line 1
    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThreadInternal(I)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0
.end method

.method public static getItemThread(Ljava/lang/String;)Lsk/mimac/slideshow/gui/DisplayItemThread;
    .locals 1

    .line 2
    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThreadInternal(Ljava/lang/String;)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0
.end method

.method public static getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThreadInternal()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaUtils()Lsk/mimac/slideshow/utils/MediaUtils;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMediaUtilsInternal()Lsk/mimac/slideshow/utils/MediaUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getMusicPlayer(Lsk/mimac/slideshow/gui/ItemThread;)Lsk/mimac/slideshow/music/MusicPlayer;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMusicPlayerInternal(Lsk/mimac/slideshow/gui/ItemThread;)Lsk/mimac/slideshow/music/MusicPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkInfo()Lsk/mimac/slideshow/network/NetworkInfo;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getNetworkInfoInternal()Lsk/mimac/slideshow/network/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getResponder(Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lsk/mimac/slideshow/http/Responder;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0, p0, p1}, Lsk/mimac/slideshow/PlatformDependentFactory;->getResponderInternal(Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lsk/mimac/slideshow/http/Responder;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenResolution()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getScreenResolutionInternal()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialService(Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;Ljava/lang/String;IIII)Lsk/mimac/slideshow/serial/SerialService;
    .locals 7

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsk/mimac/slideshow/PlatformDependentFactory;->getSerialServiceInternal(Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;Ljava/lang/String;IIII)Lsk/mimac/slideshow/serial/SerialService;

    move-result-object p0

    return-object p0
.end method

.method public static getStorageListWithInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/StorageInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getStorageListWithInternalInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemUptime()J
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getSystemUptimeInternal()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVersionCode()I
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getVersionCodeInternal()I

    move-result v0

    return v0
.end method

.method public static getVideoInputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getVideoInputListInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getWsResponder(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getWsResponderInternal(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;

    move-result-object p0

    return-object p0
.end method

.method public static hasCameraPermission()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->hasCameraPermissionInternal()Z

    move-result v0

    return v0
.end method

.method public static hasLockTaskPackages()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->hasLockTaskPackagesInternal()Z

    move-result v0

    return v0
.end method

.method public static initKeyboardListener()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->initKeyboardListenerInternal()V

    return-void
.end method

.method public static isDeviceAdminApp()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->isDeviceAdminAppInternal()Z

    move-result v0

    return v0
.end method

.method public static isStartAtBootAllowed()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->isStartAtBootAllowedInternal()Z

    move-result v0

    return v0
.end method

.method public static openInBrowser(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->openInBrowserInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static reboot()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->rebootInternal()V

    return-void
.end method

.method public static reloadApp()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->reloadAppInternal()V

    return-void
.end method

.method public static reloadFonts()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->reloadFontsInternal()V

    return-void
.end method

.method public static reloadScreenLayout()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->reloadScreenLayoutInternal()V

    return-void
.end method

.method public static unMuteGuiCreator()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->unMuteGuiCreatorInternal()V

    return-void
.end method

.method public static update(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->updateInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract connectToWiFiInternal(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllDisplaysInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/DisplayInfoDto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllItemThreadsInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            "Lsk/mimac/slideshow/gui/ItemThread;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getApiServiceInternal()Lsk/mimac/slideshow/ApiService;
.end method

.method public abstract getAudioItemThreadInternal()Lsk/mimac/slideshow/gui/AudioItemThread;
.end method

.method public abstract getAvailableFontsInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCacheDirInternal()Ljava/io/File;
.end method

.method public abstract getDeviceIdInternal()Ljava/lang/String;
.end method

.method public abstract getInitializerInternal()Lsk/mimac/slideshow/Initializer;
.end method

.method public abstract getItemThreadInternal(I)Lsk/mimac/slideshow/gui/DisplayItemThread;
.end method

.method public abstract getItemThreadInternal(Ljava/lang/String;)Lsk/mimac/slideshow/gui/DisplayItemThread;
.end method

.method public abstract getMainItemThreadInternal()Lsk/mimac/slideshow/gui/DisplayItemThread;
.end method

.method public abstract getMediaUtilsInternal()Lsk/mimac/slideshow/utils/MediaUtils;
.end method

.method public abstract getMusicPlayerInternal(Lsk/mimac/slideshow/gui/ItemThread;)Lsk/mimac/slideshow/music/MusicPlayer;
.end method

.method public abstract getNetworkInfoInternal()Lsk/mimac/slideshow/network/NetworkInfo;
.end method

.method public abstract getResponderInternal(Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lsk/mimac/slideshow/http/Responder;
.end method

.method public abstract getScreenResolutionInternal()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSerialServiceInternal(Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;Ljava/lang/String;IIII)Lsk/mimac/slideshow/serial/SerialService;
.end method

.method public abstract getStorageListWithInternalInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/StorageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSystemUptimeInternal()J
.end method

.method public abstract getVersionCodeInternal()I
.end method

.method public abstract getVideoInputListInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWsResponderInternal(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;
.end method

.method public abstract hasCameraPermissionInternal()Z
.end method

.method public abstract hasLockTaskPackagesInternal()Z
.end method

.method public abstract initKeyboardListenerInternal()V
.end method

.method public abstract isDeviceAdminAppInternal()Z
.end method

.method public abstract isStartAtBootAllowedInternal()Z
.end method

.method public abstract openInBrowserInternal(Ljava/lang/String;)V
.end method

.method public abstract rebootInternal()V
.end method

.method public abstract reloadAppInternal()V
.end method

.method public abstract reloadFontsInternal()V
.end method

.method public abstract reloadScreenLayoutInternal()V
.end method

.method public abstract unMuteGuiCreatorInternal()V
.end method

.method public abstract updateInternal(Ljava/lang/String;)Z
.end method
