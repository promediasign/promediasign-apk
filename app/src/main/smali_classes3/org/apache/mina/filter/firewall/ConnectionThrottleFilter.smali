.class public Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TIME:J = 0x3e8L

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private allowedInterval:J

.field private final clients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    .line 2
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 8

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "This is not a new client"

    invoke-interface {v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v6, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    iget-wide v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    cmp-long p1, v2, v5

    if-gez p1, :cond_0

    const-string p1, "Session connection interval too short"

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v1

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_2
    return v1
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Connections coming in too fast; closing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public setAllowedInterval(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    return-void
.end method
