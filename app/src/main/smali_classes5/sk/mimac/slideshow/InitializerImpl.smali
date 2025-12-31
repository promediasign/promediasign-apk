.class public Lsk/mimac/slideshow/InitializerImpl;
.super Lsk/mimac/slideshow/Initializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/InitializerImpl$ReloadLayoutTimerTask;,
        Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/Initializer;-><init>()V

    return-void
.end method

.method public static checkUpdate()V
    .locals 7

    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getBuildNumber()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/BuildInfo;->BUILD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Slideshow was updated, old build was {}, new build is {}"

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getInternalPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    const/16 v5, 0x4a

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const-string v6, "0123456789+-*,.;:[]()_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnoupqstuvwxyz"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/settings/SystemSettings;->setInternalPassword(Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/http/page/DashboardPage;->setNewInstall()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/http/page/DashboardPage;->setUpdatedVersion()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz p0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
.end method

.method public static hideBottomMenu()V
    .locals 4

    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "service call activity 42 s16 com.android.systemui"

    invoke-static {v0}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t hide bottom menu: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static initializeNetworkTimer(Ljava/util/Timer;)V
    .locals 13

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->GRABBER_REFRESH_RATE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lsk/mimac/slideshow/downloader/FileGrabber;

    invoke-direct {v2}, Lsk/mimac/slideshow/downloader/FileGrabber;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    const-wide/16 v3, 0xbb8

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    new-instance v8, Lsk/mimac/slideshow/item/FileDataChecker;

    invoke-direct {v8}, Lsk/mimac/slideshow/item/FileDataChecker;-><init>()V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FILE_DATA_CHECKER_RATE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v11, v0, v2

    const-wide/32 v9, 0xea60

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_REPORT_DATA:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_REPORT_STATISTICS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v2, Lsk/mimac/slideshow/InitializerImpl$6;

    invoke-direct {v2}, Lsk/mimac/slideshow/InitializerImpl$6;-><init>()V

    const-wide/16 v3, 0x61a8

    const-wide/32 v5, 0x1d4c0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    new-instance v8, Lsk/mimac/slideshow/InitializerImpl$7;

    invoke-direct {v8}, Lsk/mimac/slideshow/InitializerImpl$7;-><init>()V

    const-wide/32 v9, 0x493e0

    const-wide/32 v11, 0x4ef6d80

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->COMMUNICATION_SERVER_CODE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lsk/mimac/slideshow/InitializerImpl$8;

    invoke-direct {v2}, Lsk/mimac/slideshow/InitializerImpl$8;-><init>()V

    const-wide/16 v3, 0x6d60

    const-wide/32 v5, 0xe290

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_3
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_ADDRESS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_DEFAULT_GATEWAY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_DELAY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/WatchdogPingService;->init()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Setting up ping watchdog to \'{}\', ping every {} s"

    invoke-interface {v2, v3, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lsk/mimac/slideshow/InitializerImpl$9;

    invoke-direct {v5}, Lsk/mimac/slideshow/InitializerImpl$9;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :cond_6
    sget-object p0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Ping watchdog won\'t be active, there is no IP address to ping"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private static mkdirs(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t create directory \'{}\'"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static resolveContentPath()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_STORAGE_PATH:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->USE_EXTERNAL_SDCARD:Lsk/mimac/slideshow/settings/UserSettings;

    .line 14
    .line 15
    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->getStorageList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    .line 26
    .line 27
    const-string v4, "Migrating external storage path setting, using storageList: {}"

    .line 28
    .line 29
    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lsk/mimac/slideshow/utils/StorageInfo;

    .line 44
    .line 45
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/StorageInfo;->getPath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->save()V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    const-string v1, "/slideshow/"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Ljava/io/File;

    .line 79
    .line 80
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    sget-object v1, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    .line 97
    .line 98
    const-string v2, "External storage set ({}), but folder couldn\'t be created"

    .line 99
    .line 100
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    :goto_0
    sget-object v0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    .line 105
    .line 106
    const-string v2, "Using external storage for files: {}"

    .line 107
    .line 108
    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 118
    .line 119
    const-string v2, "slideshow/"

    .line 120
    .line 121
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method

.method public static setExceptionHandler()V
    .locals 2

    new-instance v0, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;-><init>(Lsk/mimac/slideshow/InitializerImpl$1;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static setFilePaths()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->IMAGE_EXTENSIONS:Ljava/util/Set;

    const-string v1, "heic"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v2, "heif"

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v2, "slideshow"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/FileConstants;->INTERNAL_PATH:Ljava/lang/String;

    invoke-static {}, Lsk/mimac/slideshow/FileConstants;->setFileConstants()V

    invoke-static {}, Lsk/mimac/slideshow/InitializerImpl;->resolveContentPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/InitializerImpl;->mkdirs(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/InitializerImpl;->mkdirs(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->IMAGES_PATH:Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/InitializerImpl;->mkdirs(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->FONT_PATH:Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/InitializerImpl;->mkdirs(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public setTimers(Ljava/util/Timer;)V
    .locals 12

    new-instance v1, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask;

    invoke-direct {v1}, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask;-><init>()V

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x5265c00

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v7, Lsk/mimac/slideshow/item/ItemCounter;

    invoke-direct {v7}, Lsk/mimac/slideshow/item/ItemCounter;-><init>()V

    const-wide/32 v8, 0x112a880

    const-wide/32 v10, 0x112a880

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v1, Lsk/mimac/slideshow/InitializerImpl$1;

    invoke-direct {v1, p0}, Lsk/mimac/slideshow/InitializerImpl$1;-><init>(Lsk/mimac/slideshow/InitializerImpl;)V

    const-wide/32 v2, 0x2255100

    const-wide/32 v4, 0x2255100

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/SystemUI.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/InitializerImpl$2;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/InitializerImpl$2;-><init>(Lsk/mimac/slideshow/InitializerImpl;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    new-instance v4, Lsk/mimac/slideshow/InitializerImpl$3;

    invoke-direct {v4, p0}, Lsk/mimac/slideshow/InitializerImpl$3;-><init>(Lsk/mimac/slideshow/InitializerImpl;)V

    const-wide/16 v5, 0x7530

    const-wide/16 v7, 0x7530

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v4, Lsk/mimac/slideshow/InitializerImpl$ReloadLayoutTimerTask;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lsk/mimac/slideshow/InitializerImpl$ReloadLayoutTimerTask;-><init>(Lsk/mimac/slideshow/InitializerImpl$1;)V

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x2710

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v4, Lsk/mimac/slideshow/InitializerImpl$4;

    invoke-direct {v4, p0}, Lsk/mimac/slideshow/InitializerImpl$4;-><init>(Lsk/mimac/slideshow/InitializerImpl;)V

    const-wide/16 v7, 0x1f40

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_SERVICE_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v4, Lsk/mimac/slideshow/InitializerImpl$5;

    invoke-direct {v4, p0}, Lsk/mimac/slideshow/InitializerImpl$5;-><init>(Lsk/mimac/slideshow/InitializerImpl;)V

    const-wide/16 v5, 0x1388

    const-wide/32 v7, 0x88b8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    invoke-static {p1}, Lsk/mimac/slideshow/screensaver/ScreenSaverService;->init(Ljava/util/Timer;)V

    return-void
.end method
