.class public Lsk/mimac/slideshow/communication/strategy/PingStrategy;
.super Lsk/mimac/slideshow/communication/strategy/Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsk/mimac/slideshow/communication/strategy/Strategy<",
        "Lsk/mimac/slideshow/communication/DiscoveryCommunity;",
        ">;"
    }
.end annotation


# instance fields
.field private final pinged:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/strategy/Strategy;-><init>(Lsk/mimac/slideshow/communication/Community;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/strategy/PingStrategy;->pinged:Ljava/util/Map;

    return-void
.end method

.method public static isInactive(Lsk/mimac/slideshow/communication/Peer;)Z
    .locals 6

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/Peer;->getLastResponse()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/Peer;->getLastResponse()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x6d60

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldDrop(Lsk/mimac/slideshow/communication/Peer;)Z
    .locals 6

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLastResponse()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLastResponse()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public takeStep()V
    .locals 9

    iget-object v0, p0, Lsk/mimac/slideshow/communication/strategy/Strategy;->community:Lsk/mimac/slideshow/communication/Community;

    check-cast v0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/communication/Peer;

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/communication/strategy/PingStrategy;->shouldDrop(Lsk/mimac/slideshow/communication/Peer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsk/mimac/slideshow/communication/strategy/PingStrategy;->pinged:Ljava/util/Map;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsk/mimac/slideshow/communication/strategy/Strategy;->community:Lsk/mimac/slideshow/communication/Community;

    check-cast v2, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/communication/Network;->removePeer(Lsk/mimac/slideshow/communication/Peer;)V

    :goto_1
    iget-object v2, p0, Lsk/mimac/slideshow/communication/strategy/PingStrategy;->pinged:Ljava/util/Map;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lsk/mimac/slideshow/communication/strategy/PingStrategy;->isInactive(Lsk/mimac/slideshow/communication/Peer;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getPingsSize()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    :cond_2
    iget-object v2, p0, Lsk/mimac/slideshow/communication/strategy/PingStrategy;->pinged:Ljava/util/Map;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x2af8

    add-long/2addr v5, v7

    cmp-long v2, v3, v5

    if-lez v2, :cond_0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lsk/mimac/slideshow/communication/strategy/PingStrategy;->pinged:Ljava/util/Map;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/strategy/Strategy;->community:Lsk/mimac/slideshow/communication/Community;

    check-cast v2, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->sendPing(Lsk/mimac/slideshow/communication/Peer;)V

    goto :goto_0

    :cond_4
    return-void
.end method
