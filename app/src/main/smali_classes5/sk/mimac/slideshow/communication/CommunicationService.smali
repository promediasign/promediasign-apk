.class public abstract Lsk/mimac/slideshow/communication/CommunicationService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final LOG:Lorg/slf4j/Logger;

.field private static ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

.field private static multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lsk/mimac/slideshow/communication/CommunicationService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Lg1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg1/a;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/CommunicationService;->lambda$sendRunNext$2(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/communication/CommunicationService;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lsk/mimac/slideshow/communication/CommunicationService;->lambda$sendPrepareNext$1(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static checkDevices()V
    .locals 6

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->getLastIntroMessageReceived()J

    move-result-wide v2

    const-wide/16 v4, 0x61a8

    sub-long/2addr v0, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->sendIntroMessage(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t send intro message"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t send intro message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void
.end method

.method public static countDevices()I
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getDeviceCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getDevices()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getDevicesForSync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getDevicesForSync()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getExternalIp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getCommunity()Lsk/mimac/slideshow/communication/SlideshowCommunity;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->getExternalIp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getMyPeer()Lsk/mimac/slideshow/communication/Peer;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getCommunity()Lsk/mimac/slideshow/communication/SlideshowCommunity;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getUdtClient(Ljava/lang/String;)Ludt/UDTClient;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getUdtClient(Ljava/lang/String;)Ludt/UDTClient;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getUpnpRouterIp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getCommunity()Lsk/mimac/slideshow/communication/SlideshowCommunity;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->getUpnpRouterIp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getVerifiedPeers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/Peer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getCommunity()Lsk/mimac/slideshow/communication/SlideshowCommunity;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getPeers()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static isPublicTrackerEnabled()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->isPublicTrackerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRunning()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUpnpActive()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getCommunity()Lsk/mimac/slideshow/communication/SlideshowCommunity;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->isUpnpActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$sendPrepareNext$1(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/ItemThread;->getPlaylistSyncCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/gui/ItemThread;->confirmPrepare(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$sendRunNext$2(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/ItemThread;->getPlaylistSyncCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/gui/ItemThread;->confirmPlay(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->confirmPlay(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CommunicationAsyncThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sendCommand(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getCommunity()Lsk/mimac/slideshow/communication/SlideshowCommunity;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->sendApi(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Can\'t send command"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v1
.end method

.method public static sendCommandWithResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getCommunity()Lsk/mimac/slideshow/communication/SlideshowCommunity;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->sendApiWithResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Can\'t send command"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public static sendIntroMessage()Z
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->sendIntroMessage(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t send intro message"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception v0

    sget-object v2, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t send intro message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method public static sendPrepareNext(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 5

    const-string v0, ";"

    const-string v1, "SP;__ALL__;"

    sget-object v2, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "-"

    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    const-string p0, ""

    :goto_1
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object p1, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    invoke-virtual {p1, p0}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->sendData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :goto_2
    sget-object p1, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Can\'t send command"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :goto_3
    sget-object p1, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t send command: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v2

    :cond_2
    sget-object p2, Lsk/mimac/slideshow/communication/CommunicationService;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lg1/b;

    invoke-direct {v0, p0, p1}, Lg1/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return v3
.end method

.method public static sendRunNext(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 4

    const-string v0, "SN;__ALL__;"

    sget-object v1, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "-"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object p1, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    invoke-virtual {p1, p0}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->sendData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    sget-object p1, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t send command"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :goto_2
    sget-object p1, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t send command: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lg1/b;

    invoke-direct {v1, p1, p0}, Lg1/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return v2
.end method

.method public static start()V
    .locals 4

    const-string v0, "Can\'t create communication server"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->stop()V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->COMMUNICATION_SERVER_CODE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v2, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    invoke-direct {v2, v1}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    sget-object v3, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    invoke-virtual {v3}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getDeviceMid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->start()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v0, 0x14

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    sget-object v1, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getDeviceDiscoveredConsumer()Ljava/util/function/BiConsumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->setDeviceDiscoveredConsumer(Ljava/util/function/BiConsumer;)V

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    sget-object v1, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getIpv8Port()I

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->setIpv8port(I)V

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->sendIntroMessage()Z

    return-void

    :catch_1
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/communication/CommunicationService;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static stop()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->stop()V

    sput-object v1, Lsk/mimac/slideshow/communication/CommunicationService;->multicastInstance:Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->stop()V

    sput-object v1, Lsk/mimac/slideshow/communication/CommunicationService;->ipv8Instance:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    :cond_1
    return-void
.end method
