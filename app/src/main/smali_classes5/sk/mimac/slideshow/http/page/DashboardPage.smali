.class public Lsk/mimac/slideshow/http/page/DashboardPage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


# static fields
.field private static newInstall:Z

.field private static updatedVersion:Z


# instance fields
.field private final user:Lsk/mimac/slideshow/database/entity/AccessUser;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Lsk/mimac/slideshow/database/entity/AccessUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lsk/mimac/slideshow/database/entity/AccessUser;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    iput-object p3, p0, Lsk/mimac/slideshow/http/page/DashboardPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    return-void
.end method

.method public static clearWelcomeMessage()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lsk/mimac/slideshow/http/page/DashboardPage;->newInstall:Z

    sput-boolean v0, Lsk/mimac/slideshow/http/page/DashboardPage;->updatedVersion:Z

    return-void
.end method

.method private getSyncCodesMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getDevicesForSync()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/communication/DeviceInfo;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/DeviceInfo;->getCurrentPanels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;

    invoke-virtual {v4}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->getPlaylistSyncCode()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->getPanelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v5, v4}, Lsk/mimac/slideshow/http/page/DashboardPage;->putSyncCodeToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/ItemThread;->getPlaylistSyncCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, "background_audio"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-direct {p0, v0, v3, v2}, Lsk/mimac/slideshow/http/page/DashboardPage;->putSyncCodeToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private putSyncCodeToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static setNewInstall()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lsk/mimac/slideshow/http/page/DashboardPage;->newInstall:Z

    return-void
.end method

.method public static setUpdatedVersion()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lsk/mimac/slideshow/http/page/DashboardPage;->updatedVersion:Z

    return-void
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/dashboard"

    return-object v0
.end method

.method public process()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v3, "user"

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/DashboardPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/VolumeManager;->getMaxVolume()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "maxVolume"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/VolumeManager;->getCurrentVolume()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "curVolume"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v3, "numberedPlaylists"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getAllWithNumber()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Can\'t get playlists from DB"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v3, "screenLayoutCurrent"

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayout()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->isSetScreenLayout()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "screenLayoutIsSet"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v4, "itemThreads"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v3, "syncCodes"

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/DashboardPage;->getSyncCodesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->MULTI_DISPLAY_ALLOW:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v3}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "multiDisplayAllow"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_SERVER_ADDRESS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/mqtt/MqttService;->getState()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    const-string v5, " - "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mqttState"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "newInstall"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "updatedVersion"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "branding"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v3, "faceDetection"

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->getStatistics()Lsk/mimac/slideshow/face/FaceDetectionStatistics;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/GuiCreator;->isFullscreen()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isFullscreen"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->COMMUNICATION_SERVER_CODE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->countDevices()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    const-string v5, "nearbyDevices"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/GuiCreator;->getLayoutCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "numberOfDisplays"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/MountListener;->isMounted()Z

    move-result v2

    const-string v3, "externalStorageInfo"

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v4, "usb_flash_drive_with_files"

    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lsk/mimac/slideshow/MountListener;->getMountedFolderFiles()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lsk/mimac/slideshow/settings/UserSettings;->USB_MOUNT_ACTION:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v7, Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-virtual {v6}, Lsk/mimac/slideshow/enums/UsbMountAction;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v6, v7, v0

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2
    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "slideshow/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_1
    new-instance v2, Landroid/os/StatFs;

    sget-object v5, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v2

    goto :goto_2

    :catch_1
    move-exception v2

    sget-object v5, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Can\'t get statistics from {}"

    sget-object v7, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    const-wide/32 v5, 0x100000

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v7

    mul-long v7, v7, v1

    div-long/2addr v7, v5

    long-to-int v1, v7

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v9

    mul-long v9, v9, v7

    div-long/2addr v9, v5

    long-to-int v0, v9

    :cond_4
    mul-int/lit8 v2, v1, 0x64

    div-int/2addr v2, v0

    invoke-static {v2}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->getFreeStorageColor(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "external_storage_with_path"

    const-string v7, ": <i>"

    .line 1
    invoke-static {v6, v7, v5}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2
    sget-object v6, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const-string v7, "</i> <span style=\'color:"

    const-string v8, "\'>("

    .line 3
    invoke-static {v5, v6, v7, v2, v8}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MB / "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " MB)</span>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-static {}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->getStorageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "external_storage_unused"

    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-void
.end method
