.class public abstract Lsk/mimac/slideshow/WatchdogPingService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static defaultGatewayIp:Ljava/lang/String;

.field private static failCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/WatchdogPingService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/WatchdogPingService;->LOG:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    sput v0, Lsk/mimac/slideshow/WatchdogPingService;->failCount:I

    return-void
.end method

.method public static init()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lsk/mimac/slideshow/WatchdogPingService;->defaultGatewayIp:Ljava/lang/String;

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_DEFAULT_GATEWAY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getNetworkInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/network/NetworkInfo;->getGateway()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/network/NetworkInfo;->getGateway()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/network/NetworkInfo;->getGateway()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/WatchdogPingService;->defaultGatewayIp:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_ADDRESS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static processPingResult(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    sput p0, Lsk/mimac/slideshow/WatchdogPingService;->failCount:I

    goto :goto_0

    :cond_0
    sget p1, Lsk/mimac/slideshow/WatchdogPingService;->failCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lsk/mimac/slideshow/WatchdogPingService;->failCount:I

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_TIMES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    sget-object p1, Lsk/mimac/slideshow/WatchdogPingService;->LOG:Lorg/slf4j/Logger;

    sget v0, Lsk/mimac/slideshow/WatchdogPingService;->failCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Ping \'{}\' failed {} times, rebooting device"

    invoke-interface {p1, v1, p0, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reboot()V

    goto :goto_0

    :cond_1
    sget-object p1, Lsk/mimac/slideshow/WatchdogPingService;->LOG:Lorg/slf4j/Logger;

    sget v0, Lsk/mimac/slideshow/WatchdogPingService;->failCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Ping \'{}\' failed {} times"

    invoke-interface {p1, v1, p0, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static run()V
    .locals 4

    const-string v0, "ping -c 1 "

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_ADDRESS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/WatchdogPingService;->defaultGatewayIp:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_DEFAULT_GATEWAY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lsk/mimac/slideshow/WatchdogPingService;->defaultGatewayIp:Ljava/lang/String;

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v1, v0}, Lsk/mimac/slideshow/WatchdogPingService;->processPingResult(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :goto_0
    sget-object v2, Lsk/mimac/slideshow/WatchdogPingService;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t ping address \'{}\'"

    invoke-interface {v2, v3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    sput v0, Lsk/mimac/slideshow/WatchdogPingService;->failCount:I

    return-void
.end method
