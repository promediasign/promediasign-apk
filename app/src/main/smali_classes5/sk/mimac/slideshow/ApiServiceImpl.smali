.class public Lsk/mimac/slideshow/ApiServiceImpl;
.super Lsk/mimac/slideshow/ApiService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/ApiService;-><init>()V

    return-void
.end method

.method private action(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    const-string p2, "code"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    :try_start_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {}, Lsk/mimac/slideshow/ScreenPasswordHelper;->getInstance()Lsk/mimac/slideshow/ScreenPasswordHelper;

    move-result-object p2

    invoke-virtual {p2}, Lsk/mimac/slideshow/ScreenPasswordHelper;->setLastLoggedInNow()V

    new-instance p2, Ljava/util/concurrent/FutureTask;

    new-instance v0, Le1/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le1/d;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p2}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string p2, "An error occurred during processing of the action"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lsk/mimac/slideshow/exception/ApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An error occurred during processing of the action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p2, p1, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p2

    :catch_2
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string p2, "Invalid value of parameter \'code\'"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1

    :cond_1
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string p2, "Missing parameter \'code\'"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1

    :cond_2
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string p2, "Only admin can call action"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private changeVolume(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "vol"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lsk/mimac/slideshow/VolumeManager;->changeVolume(I)V

    goto :goto_0

    :cond_0
    const-string v0, "volPercentage"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Lsk/mimac/slideshow/VolumeManager;->changeVolumePercentage(I)V

    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/VolumeManager;->getCurrentVolumePercentage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "currentVolume"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_1
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Either vol or volPercentage parameter has to be entered"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method public static synthetic e()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->lambda$processInternal$2()V

    return-void
.end method

.method private externalStorageExists(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lsk/mimac/slideshow/MountListener;->getMountedFolder()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FOLDER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "FILE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "exists"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1

    :cond_3
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Missing name parameter"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1

    :cond_4
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Missing type parameter"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method public static synthetic f()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->lambda$processInternal$3()V

    return-void
.end method

.method public static synthetic g(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/ApiServiceImpl;->lambda$action$4(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getBugReportData()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    const-string v1, ""

    const-string v2, "Requested from API"

    invoke-static {v0, v1, v2}, Lsk/mimac/slideshow/http/page/ReporterFormPage;->prepareZipFile(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lsk/mimac/slideshow/exception/ApiException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {v1, v0, v2}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw v1
.end method

.method public static getDeviceDataMap(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "partial"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_2

    new-instance p0, Landroid/os/StatFs;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const-string v1, "serialNumber"

    invoke-static {}, Lsk/mimac/slideshow/ContextHolder;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "macAddress"

    invoke-static {}, Lsk/mimac/slideshow/utils/NetworkFormatterUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "androidVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    invoke-static {}, Lsk/mimac/slideshow/ContextHolder;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, "uptime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lsk/mimac/slideshow/ContextHolder;->MAIN_SERVICE:Lsk/mimac/slideshow/MainService;

    invoke-virtual {v3}, Lsk/mimac/slideshow/MainService;->getAppUptime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, "appUptime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "softwareVersion"

    sget-object v2, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "softwareVersionCode"

    const v2, 0x4c4c46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hardwareModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long v3, v3, v1

    const-string v1, "storageSpaceFree"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long v3, v3, v1

    const-string p0, "storageSpaceTotal"

    invoke-virtual {v0, p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "lastDisplayedFile"

    invoke-static {}, Lsk/mimac/slideshow/item/ItemCounter;->getLastItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lsk/mimac/slideshow/network/NetworkInfoResolver;->getInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ipAddressInternal"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "timeZone"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "rooted"

    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "deviceOwner"

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isDeviceOwnerApp()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "deviceAdmin"

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isDeviceAdminApp()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "lockTaskApplication"

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->hasLockTaskPackages()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "lockTaskMode"

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isLockTask()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Lsk/mimac/slideshow/hardware/HardwareFacadeHolder;->getInstance()Lsk/mimac/slideshow/hardware/HardwareFacade;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/hardware/HardwareFacade;->getScreenBrightness()Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "screenBrightness"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CRASH_LOGCAT:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CRASH_LOGCAT_2:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string v1, "errorReports"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->getCurrentStatus()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p0, "hardwareStatus"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p0, "currentVolume"

    invoke-static {}, Lsk/mimac/slideshow/VolumeManager;->getCurrentVolumePercentage()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayoutDirect()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v1

    const-string v2, ""

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    move-object p0, v2

    :goto_3
    const-string v3, "currentPlaylist"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const-string p0, "currentScreenLayout"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static getFaceDetectionLastImage(Z)Lorg/json/JSONObject;
    .locals 2

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->getLastImage()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "data"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Got no image from face detection service, please check if it is running"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Lsk/mimac/slideshow/exception/ApiException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {v0, p0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw v0

    :cond_1
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Only admin can get face detection image"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private getFaceDetectionResults(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/face/FaceDetectionResult;",
            ">;"
        }
    .end annotation

    const-string v0, "fromIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "toIndex"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lsk/mimac/slideshow/face/FaceDetectionService;->getResults(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getLastSynchronization(Z)Lorg/json/JSONObject;
    .locals 5

    if-eqz p1, :cond_1

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/downloader/FileGrabber;->getLastStatistics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/downloader/DownloadStatistics;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "target"

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getStarted()Lj$/time/OffsetDateTime;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/OffsetDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "started"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFinished()Lj$/time/OffsetDateTime;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/OffsetDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "finished"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "startMethod"

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getStartMethod()Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "filesDownloaded"

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFilesDownloaded()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "filesFailed"

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFilesFailed()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "filesSkipped"

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFilesSkipped()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "filesNotChanged"

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFilesNotChanged()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lastStatistics"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_1
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Only admin can call synchronize"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method public static getPanels()Lorg/json/JSONObject;
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->getPanels()Ljava/util/Map;

    move-result-object v0

    const-string v1, "music_type_audio"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method private static getScreenshot(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "displayId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->getScreenshot(Ljava/lang/Integer;Z)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "data"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    new-instance v0, Lsk/mimac/slideshow/exception/ApiException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {v0, p0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw v0
.end method

.method private getVolume()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/VolumeManager;->getCurrentVolumePercentage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "currentVolume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public static synthetic h()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->lambda$processInternal$0()V

    return-void
.end method

.method public static synthetic i()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->lambda$processInternal$1()V

    return-void
.end method

.method private static synthetic lambda$action$4(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)Ljava/lang/Boolean;
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-virtual {v0}, Lsk/mimac/slideshow/display/SlideshowActivity;->getDisplayHelper()Lsk/mimac/slideshow/display/DisplayHelper;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lsk/mimac/slideshow/userinput/KeyboardListener;->processAction(Lsk/mimac/slideshow/display/DisplayHelper;Lsk/mimac/slideshow/database/entity/KeyAction$Action;Ljava/util/Map;ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$processInternal$0()V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->setFullscreen(Z)V

    return-void
.end method

.method private static synthetic lambda$processInternal$1()V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->setFullscreen(Z)V

    return-void
.end method

.method private static synthetic lambda$processInternal$2()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->startLockTask(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic lambda$processInternal$3()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->stopLockTask(Landroid/app/Activity;)V

    return-void
.end method

.method private parseByteData(Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "text"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "base64"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "hex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lsk/mimac/slideshow/exception/ApiException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid HEX data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {v0, p1, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private processDeviceOwnerCall(Lsk/mimac/slideshow/utils/ThrowingRunnable;Z)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p1}, Lsk/mimac/slideshow/utils/ThrowingRunnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lsk/mimac/slideshow/exception/ApiException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p2, p1, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p2

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string p2, "Only admin can manage DeviceOwner"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private processFaceDetection(I)Lorg/json/JSONObject;
    .locals 3

    invoke-static {p1}, Lsk/mimac/slideshow/face/FaceDetectionService;->getResult(I)Lsk/mimac/slideshow/face/FaceDetectionResult;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lsk/mimac/slideshow/face/FaceDetectionResult;

    invoke-direct {p1}, Lsk/mimac/slideshow/face/FaceDetectionResult;-><init>()V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "facesCount"

    invoke-virtual {p1}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getFacesCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "largestFace"

    invoke-virtual {p1}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getLargestFace()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getEyesOpened()F

    move-result p1

    float-to-double v1, p1

    const-string p1, "eyesOpened"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method private processFaceDetectionStatistics(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/ApiServiceImpl;->getFaceDetectionResults(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "min"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v10, v3

    move v3, v1

    move v1, v4

    move v4, v10

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "average"

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/face/FaceDetectionResult;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_1
    const-string v7, "max"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getLargestFace()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v7, v3

    if-gez v7, :cond_5

    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getLargestFace()I

    move-result v3

    int-to-float v3, v3

    :cond_5
    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getFacesCount()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_6

    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getFacesCount()I

    move-result v4

    int-to-float v4, v4

    :cond_6
    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getEyesOpened()F

    move-result v7

    cmpg-float v7, v7, v1

    if-gez v7, :cond_1

    :goto_3
    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getEyesOpened()F

    move-result v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getLargestFace()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_7

    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getLargestFace()I

    move-result v3

    int-to-float v3, v3

    :cond_7
    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getFacesCount()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v4

    if-lez v7, :cond_8

    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getFacesCount()I

    move-result v4

    int-to-float v4, v4

    :cond_8
    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getEyesOpened()F

    move-result v7

    cmpl-float v7, v7, v1

    if-lez v7, :cond_1

    goto :goto_3

    :pswitch_2
    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getLargestFace()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getEyesOpened()F

    move-result v7

    add-float/2addr v1, v7

    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getFacesCount()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v3, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_4

    :cond_a
    move v0, v1

    move p1, v3

    move v1, v4

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "facesCount"

    float-to-double v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "largestFace"

    float-to-double v3, p1

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "eyesOpened"

    float-to-double v0, v0

    invoke-virtual {v2, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x25a321e3 -> :sswitch_2
        0x1a564 -> :sswitch_1
        0x1a652 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processSendSerial(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/ApiServiceImpl;->parseByteData(Ljava/util/Map;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lsk/mimac/slideshow/serial/SerialServiceHolder;->writeMessage([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Unsuccessful serial data write"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1

    :cond_1
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Either text or base64 has to be set"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private restartFaceDetectionService(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->start()V

    return-void

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Only admin can restart face detection service"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private screenBrightness(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "value"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/hardware/HardwareFacadeHolder;->getInstance()Lsk/mimac/slideshow/hardware/HardwareFacade;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/hardware/HardwareFacade;->setScreenBrightness(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1

    :cond_1
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Missing value parameter"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private screenCheck(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    const-string v1, "text"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/GuiCreator;->showScreenCheck(Ljava/lang/String;)V

    return-void
.end method

.method private synchronize(Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const-string p2, "url"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "method"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    :goto_0
    move-object v5, p2

    goto :goto_1

    :cond_0
    const-string p2, "POST"

    goto :goto_0

    :goto_1
    const-string p2, "target"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    :goto_2
    move-object v4, p2

    goto :goto_3

    :cond_1
    const-string p2, "CLOUD/files.zip"

    goto :goto_2

    :goto_3
    const-string p2, "clearFolder"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "false"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    invoke-static {}, Lsk/mimac/slideshow/MainService;->getNetworkTimer()Ljava/util/Timer;

    move-result-object p1

    new-instance p2, Lsk/mimac/slideshow/ApiServiceImpl$1;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lsk/mimac/slideshow/ApiServiceImpl$1;-><init>(Lsk/mimac/slideshow/ApiServiceImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_2
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string p2, "Missing parameter \'url\'"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1

    :cond_3
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string p2, "Only admin can call synchronize"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private usageStats(Z)Lorg/json/JSONObject;
    .locals 5

    if-eqz p1, :cond_1

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/utils/UsageStatsUtils;->getUsageEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "eventType"

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "className"

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "stats"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Only admin can check usage stats"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method


# virtual methods
.method public processInternal(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "screen/brightness"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "externalstorage/exists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "facedetection/previous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "sendserial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "deviceowner/locktaskstop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "fullscreen/unset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "deviceinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "bugreportdata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "facedetection/last"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "deviceowner/locktaskstart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "deviceowner/deviceadminunset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "deviceowner/locktaskpackagesset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "deviceowner/deviceownerunset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "deviceowner/deviceownerset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "zones"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "beep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "screencheck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "fullscreen/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "facedetection/restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "fullscreen/toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "facedetection/lastimage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "panels"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_17
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_18
    const-string v1, "facedetection/statistics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_19
    const-string v1, "synchronize/last"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1a
    const-string v1, "volume/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1b
    const-string v1, "volume/get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1c
    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1d
    const-string v1, "synchronize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance p2, Lsk/mimac/slideshow/exception/ApiException;

    const-string p3, "Operation \'"

    const-string v0, "\' was not found"

    .line 1
    invoke-static {p3, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object p3, Lsk/mimac/slideshow/exception/ApiException$Type;->NOT_FOUND:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p2, p1, p3}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p2

    :pswitch_0
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiServiceImpl;->screenBrightness(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiServiceImpl;->externalStorageExists(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string p1, "index"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/ApiServiceImpl;->processFaceDetection(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiServiceImpl;->processSendSerial(Ljava/util/Map;)V

    return-object v0

    :pswitch_4
    new-instance p1, LA0/a;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, LA0/a;-><init>(I)V

    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->processDeviceOwnerCall(Lsk/mimac/slideshow/utils/ThrowingRunnable;Z)V

    return-object v0

    :pswitch_5
    new-instance p1, Le1/c;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Le1/c;-><init>(I)V

    invoke-static {p1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0

    :pswitch_6
    invoke-static {p2}, Lsk/mimac/slideshow/ApiServiceImpl;->getDeviceDataMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-direct {p0}, Lsk/mimac/slideshow/ApiServiceImpl;->getBugReportData()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-direct {p0, v2}, Lsk/mimac/slideshow/ApiServiceImpl;->processFaceDetection(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_9
    new-instance p1, LA0/a;

    const/16 p2, 0x18

    invoke-direct {p1, p2}, LA0/a;-><init>(I)V

    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->processDeviceOwnerCall(Lsk/mimac/slideshow/utils/ThrowingRunnable;Z)V

    return-object v0

    :pswitch_a
    new-instance p1, LA0/a;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, LA0/a;-><init>(I)V

    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->processDeviceOwnerCall(Lsk/mimac/slideshow/utils/ThrowingRunnable;Z)V

    return-object v0

    :pswitch_b
    new-instance p1, LA0/a;

    const/16 p2, 0x17

    invoke-direct {p1, p2}, LA0/a;-><init>(I)V

    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->processDeviceOwnerCall(Lsk/mimac/slideshow/utils/ThrowingRunnable;Z)V

    return-object v0

    :pswitch_c
    new-instance p1, LA0/a;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, LA0/a;-><init>(I)V

    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->processDeviceOwnerCall(Lsk/mimac/slideshow/utils/ThrowingRunnable;Z)V

    return-object v0

    :pswitch_d
    new-instance p1, LA0/a;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, LA0/a;-><init>(I)V

    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->processDeviceOwnerCall(Lsk/mimac/slideshow/utils/ThrowingRunnable;Z)V

    return-object v0

    :pswitch_e
    invoke-static {}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->beep()V

    return-object v0

    :pswitch_f
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiServiceImpl;->screenCheck(Ljava/util/Map;)V

    return-object v0

    :pswitch_10
    new-instance p1, Le1/c;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Le1/c;-><init>(I)V

    invoke-static {p1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0

    :pswitch_11
    invoke-direct {p0, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->restartFaceDetectionService(Z)V

    return-object v0

    :pswitch_12
    invoke-static {p2}, Lsk/mimac/slideshow/ApiServiceImpl;->getScreenshot(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_13
    new-instance p1, Le1/c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le1/c;-><init>(I)V

    invoke-static {p1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0

    :pswitch_14
    invoke-static {p3}, Lsk/mimac/slideshow/ApiServiceImpl;->getFaceDetectionLastImage(Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_15
    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->getPanels()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_16
    invoke-direct {p0, p2, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->action(Ljava/util/Map;Z)V

    return-object v0

    :pswitch_17
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiServiceImpl;->processFaceDetectionStatistics(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_18
    invoke-direct {p0, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->getLastSynchronization(Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_19
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiServiceImpl;->changeVolume(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_1a
    invoke-direct {p0}, Lsk/mimac/slideshow/ApiServiceImpl;->getVolume()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_1b
    invoke-direct {p0, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->usageStats(Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_1c
    invoke-direct {p0, p2, p3}, Lsk/mimac/slideshow/ApiServiceImpl;->synchronize(Ljava/util/Map;Z)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7eb0dab0 -> :sswitch_1d
        -0x67d95c62 -> :sswitch_1c
        -0x5c9b491f -> :sswitch_1b
        -0x5c9b1c13 -> :sswitch_1a
        -0x5953700b -> :sswitch_19
        -0x57ab9736 -> :sswitch_18
        -0x54d081ca -> :sswitch_17
        -0x3b56c911 -> :sswitch_16
        -0x37868402 -> :sswitch_15
        -0x20e077d8 -> :sswitch_14
        -0x18d27a9a -> :sswitch_13
        -0xb7ca038 -> :sswitch_12
        -0x943bff2 -> :sswitch_11
        -0x25e77e4 -> :sswitch_10
        0x2e142e -> :sswitch_f
        0x6eb5247 -> :sswitch_e
        0x6ef5b57 -> :sswitch_d
        0x8a630de -> :sswitch_c
        0x8dd9e33 -> :sswitch_b
        0x107221c2 -> :sswitch_a
        0x112cfcc0 -> :sswitch_9
        0x119ad37d -> :sswitch_8
        0x2d828852 -> :sswitch_7
        0x2e996804 -> :sswitch_6
        0x38ccc3d5 -> :sswitch_5
        0x3a5c4be4 -> :sswitch_4
        0x52b0077c -> :sswitch_3
        0x6413305e -> :sswitch_2
        0x714a46fb -> :sswitch_1
        0x7c9301d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_15
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
