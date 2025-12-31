.class public Lsk/mimac/slideshow/communication/IPv8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static LAZY_SODIUM_INSTANCE:Lcom/goterl/lazysodium/LazySodium;

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final community:Lsk/mimac/slideshow/communication/Community;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final strategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/strategy/Strategy<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final udpEndpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/IPv8;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/IPv8;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public varargs constructor <init>(Lsk/mimac/slideshow/communication/Peer;Lsk/mimac/slideshow/communication/UdpEndpoint;Lsk/mimac/slideshow/communication/Community;[Lsk/mimac/slideshow/communication/strategy/Strategy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/communication/Peer;",
            "Lsk/mimac/slideshow/communication/UdpEndpoint;",
            "Lsk/mimac/slideshow/communication/Community;",
            "[",
            "Lsk/mimac/slideshow/communication/strategy/Strategy<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg1/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg1/a;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/communication/IPv8;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsk/mimac/slideshow/communication/IPv8;->strategies:Ljava/util/List;

    iput-object p2, p0, Lsk/mimac/slideshow/communication/IPv8;->udpEndpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    iput-object p3, p0, Lsk/mimac/slideshow/communication/IPv8;->community:Lsk/mimac/slideshow/communication/Community;

    invoke-virtual {p3, v0}, Lsk/mimac/slideshow/communication/Community;->setExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {p3}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/Network;->setMyPeer(Lsk/mimac/slideshow/communication/Peer;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/communication/UdpEndpoint;->getUdtEndpoint()Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    move-result-object p1

    invoke-virtual {p3}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->setNetwork(Lsk/mimac/slideshow/communication/Network;)V

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    instance-of p1, p3, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    if-eqz p1, :cond_0

    new-instance p1, Lsk/mimac/slideshow/communication/strategy/PingStrategy;

    check-cast p3, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-direct {p1, p3}, Lsk/mimac/slideshow/communication/strategy/PingStrategy;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;

    invoke-direct {p1, p3}, Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/communication/IPv8;->lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "IPv8 Executor thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/communication/IPv8;->strategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/communication/strategy/Strategy;

    :try_start_0
    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/strategy/Strategy;->takeStep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lsk/mimac/slideshow/communication/IPv8;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Error while running strategy {}"

    invoke-interface {v3, v4, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 12

    iget-object v0, p0, Lsk/mimac/slideshow/communication/IPv8;->community:Lsk/mimac/slideshow/communication/Community;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/IPv8;->udpEndpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/Community;->setEndpoint(Lsk/mimac/slideshow/communication/UdpEndpoint;)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/IPv8;->udpEndpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/IPv8;->community:Lsk/mimac/slideshow/communication/Community;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lg1/f;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lg1/f;-><init>(Lsk/mimac/slideshow/communication/Community;I)V

    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/communication/UdpEndpoint;->setPacketListener(Lsk/mimac/slideshow/communication/PacketListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/IPv8;->udpEndpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/IPv8;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/UdpEndpoint;->setExecutor(Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/IPv8;->udpEndpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/UdpEndpoint;->start()V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/IPv8;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/IPv8;->community:Lsk/mimac/slideshow/communication/Community;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LB/c;

    const/16 v3, 0x9

    invoke-direct {v2, v1, v3}, LB/c;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lsk/mimac/slideshow/communication/IPv8;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x2

    const-wide/16 v8, 0xb

    move-object v5, p0

    move-object v10, v11

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v5, p0, Lsk/mimac/slideshow/communication/IPv8;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lsk/mimac/slideshow/communication/IPv8;->community:Lsk/mimac/slideshow/communication/Community;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, LB/c;

    const/16 v1, 0x9

    invoke-direct {v6, v0, v1}, LB/c;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v7, 0x19

    const-wide/16 v9, 0x3d

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/IPv8;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
