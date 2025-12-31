.class public Lsk/mimac/slideshow/PlatformDependentFactoryImpl;
.super Lsk/mimac/slideshow/PlatformDependentFactory;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/PlatformDependentFactory;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->lambda$reloadScreenLayoutInternal$0()V

    return-void
.end method

.method public static init()V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;

    invoke-direct {v0}, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/PlatformDependentFactory;->INSTANCE:Lsk/mimac/slideshow/PlatformDependentFactory;

    return-void
.end method

.method private static synthetic lambda$reloadScreenLayoutInternal$0()V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->reload()V

    return-void
.end method


# virtual methods
.method public connectToWiFiInternal(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lsk/mimac/slideshow/network/WiFiHelper;->connectToNetwork(Ljava/util/List;)V

    return-void
.end method

.method public getAllDisplaysInternal()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/DisplayInfoDto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MULTI_DISPLAY_ALLOW:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/utils/DisplayUtils;->getAllDisplays()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->getResolution()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/utils/DisplayInfoDto;

    invoke-direct {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setDisplayId(Ljava/lang/String;)V

    const-string v2, "Display"

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setName(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setWidth(I)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setHeight(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/utils/DisplayUtils;->getAllDisplays()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/DisplayInfoDto;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setWidth(I)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getHeight()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setMain(Z)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemThreadsInternal()Ljava/util/List;
    .locals 4
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

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->getAllDisplayItemThreads()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->MAIN_SERVICE:Lsk/mimac/slideshow/MainService;

    invoke-virtual {v2}, Lsk/mimac/slideshow/MainService;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getApiServiceInternal()Lsk/mimac/slideshow/ApiService;
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/ApiServiceImpl;

    invoke-direct {v0}, Lsk/mimac/slideshow/ApiServiceImpl;-><init>()V

    return-object v0
.end method

.method public getAudioItemThreadInternal()Lsk/mimac/slideshow/gui/AudioItemThread;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->MAIN_SERVICE:Lsk/mimac/slideshow/MainService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/MainService;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableFontsInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsk/mimac/slideshow/utils/FontUtils;->getAvailableFonts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDirInternal()Ljava/io/File;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdInternal()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/ContextHolder;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitializerInternal()Lsk/mimac/slideshow/Initializer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->getInitializerInternal()Lsk/mimac/slideshow/InitializerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getInitializerInternal()Lsk/mimac/slideshow/InitializerImpl;
    .locals 1

    .line 2
    new-instance v0, Lsk/mimac/slideshow/InitializerImpl;

    invoke-direct {v0}, Lsk/mimac/slideshow/InitializerImpl;-><init>()V

    return-object v0
.end method

.method public getItemThreadInternal(I)Lsk/mimac/slideshow/gui/DisplayItemThread;
    .locals 1

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/GuiCreator;->getPlaylistPanelById(I)Lsk/mimac/slideshow/gui/PlaylistPanel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemThreadInternal(Ljava/lang/String;)Lsk/mimac/slideshow/gui/DisplayItemThread;
    .locals 1

    .line 2
    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/GuiCreator;->getPlaylistPanelByName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/PlaylistPanel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMainItemThreadInternal()Lsk/mimac/slideshow/gui/DisplayItemThread;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->getMainPlaylistPanel()Lsk/mimac/slideshow/gui/PlaylistPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getMediaUtilsInternal()Lsk/mimac/slideshow/utils/MediaUtils;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->getMediaUtilsInternal()Lsk/mimac/slideshow/utils/MediaUtilsImpl;

    move-result-object v0

    return-object v0
.end method

.method public getMediaUtilsInternal()Lsk/mimac/slideshow/utils/MediaUtilsImpl;
    .locals 1

    .line 2
    new-instance v0, Lsk/mimac/slideshow/utils/MediaUtilsImpl;

    invoke-direct {v0}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getMusicPlayerInternal(Lsk/mimac/slideshow/gui/ItemThread;)Lsk/mimac/slideshow/music/MusicPlayer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->getMusicPlayerInternal(Lsk/mimac/slideshow/gui/ItemThread;)Lsk/mimac/slideshow/music/MusicPlayerImpl;

    move-result-object p1

    return-object p1
.end method

.method public getMusicPlayerInternal(Lsk/mimac/slideshow/gui/ItemThread;)Lsk/mimac/slideshow/music/MusicPlayerImpl;
    .locals 1

    .line 2
    new-instance v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;

    invoke-direct {v0, p1}, Lsk/mimac/slideshow/music/MusicPlayerImpl;-><init>(Lsk/mimac/slideshow/gui/ItemThread;)V

    return-object v0
.end method

.method public getNetworkInfoInternal()Lsk/mimac/slideshow/network/NetworkInfo;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/network/NetworkInfoResolver;->getInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResponderInternal(Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lsk/mimac/slideshow/http/Responder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->getResponderInternal(Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lsk/mimac/slideshow/http/ResponderImpl;

    move-result-object p1

    return-object p1
.end method

.method public getResponderInternal(Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lsk/mimac/slideshow/http/ResponderImpl;
    .locals 1

    .line 2
    new-instance v0, Lsk/mimac/slideshow/http/ResponderImpl;

    invoke-direct {v0, p1, p2}, Lsk/mimac/slideshow/http/ResponderImpl;-><init>(Lsk/mimac/slideshow/database/entity/AccessUser;Z)V

    return-object v0
.end method

.method public getScreenResolutionInternal()Ljava/util/Map;
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

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->getResolution()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSerialServiceInternal(Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;Ljava/lang/String;IIII)Lsk/mimac/slideshow/serial/SerialService;
    .locals 8

    new-instance v7, Lsk/mimac/slideshow/serial/SerialServiceImpl;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/serial/SerialServiceImpl;-><init>(Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;Ljava/lang/String;IIII)V

    return-object v7
.end method

.method public getStorageListWithInternalInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/StorageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->getStorageListWithInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystemUptimeInternal()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersionCodeInternal()I
    .locals 1

    const v0, 0x4c4c46

    return v0
.end method

.method public getVideoInputListInternal()Ljava/util/List;
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

    invoke-static {}, Lsk/mimac/slideshow/utils/VideoInputUtils;->getInputList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWsResponderInternal(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/http/WsResponder;

    invoke-direct {v0, p1}, Lsk/mimac/slideshow/http/WsResponder;-><init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V

    return-object v0
.end method

.method public hasCameraPermissionInternal()Z
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLockTaskPackagesInternal()Z
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->hasLockTaskPackages()Z

    move-result v0

    return v0
.end method

.method public initKeyboardListenerInternal()V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/userinput/KeyboardListener;->init()V

    return-void
.end method

.method public isDeviceAdminAppInternal()Z
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isDeviceAdminApp()Z

    move-result v0

    return v0
.end method

.method public isStartAtBootAllowedInternal()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, LA/a;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public openInBrowserInternal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lsk/mimac/slideshow/exception/BrowserNotFoundException;

    const-string v1, "Can\'t open browser in Android"

    invoke-direct {v0, v1, p1}, Lsk/mimac/slideshow/exception/BrowserNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public rebootInternal()V
    .locals 4

    const-string v0, "Can\'t reboot device"

    sget-object v1, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Rebooting device"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Z9X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "reboot"

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zidoo.poser.off.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {v3}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "Can\'t reboot, returned {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    sget-object v2, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v2, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_2
    return-void
.end method

.method public reloadAppInternal()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Reloading application"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    return-void
.end method

.method public reloadFontsInternal()V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/utils/FontUtils;->refreshAvailableFonts()V

    return-void
.end method

.method public reloadScreenLayoutInternal()V
    .locals 2

    new-instance v0, Le1/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Le1/c;-><init>(I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unMuteGuiCreatorInternal()V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->unMute()V

    return-void
.end method

.method public updateInternal(Ljava/lang/String;)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Z9X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "InstallPath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "zidoo.busybox.action"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cmd"

    const-string v3, "InstallApk"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "parameter"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v1

    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "Philips"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "php.intent.action.UPDATE_APK"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "filePath"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "keep"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "packageName"

    const-string v2, "sk.mimac.slideshow"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "activityName"

    const-string v2, "sk.mimac.slideshow.display.SlideshowActivity"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isAllowDowngrade"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v1

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isDeviceAdminApp()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v3

    sget-object v4, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v5, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_0
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    const/high16 v4, 0x4000000

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-static {v0, v2, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Starting update through package installer"

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-eqz p1, :cond_4

    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    sget-object v0, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t install app over package installer"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return v2
.end method
