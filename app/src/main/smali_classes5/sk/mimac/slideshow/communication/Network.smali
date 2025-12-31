.class public Lsk/mimac/slideshow/communication/Network;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final blacklistAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            ">;"
        }
    .end annotation
.end field

.field private myPeer:Lsk/mimac/slideshow/communication/Peer;

.field private final peers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/communication/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final wanEstimationLog:Lsk/mimac/slideshow/communication/utils/WanEstimationLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Network;->blacklistAddresses:Ljava/util/Set;

    new-instance v0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    invoke-direct {v0}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Network;->wanEstimationLog:Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addBlacklistAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Network;->blacklistAddresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPeer(Lsk/mimac/slideshow/communication/Peer;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/Network;->blacklistAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/communication/Peer;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLastRequest()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLastRequest()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/Peer;->setLastRequest(Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLastResponse()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLastResponse()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/Peer;->setLastResponse(Ljava/lang/Long;)V

    :cond_3
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/Peer;->setAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    :cond_4
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/Peer;->setLanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    :cond_5
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/Peer;->setWanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    :cond_6
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMyPeer()Lsk/mimac/slideshow/communication/Peer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Network;->myPeer:Lsk/mimac/slideshow/communication/Peer;

    return-object v0
.end method

.method public getNumPeers()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeerByAddress(Lsk/mimac/slideshow/communication/address/IPv4Address;)Lsk/mimac/slideshow/communication/Peer;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPeerByMid(Ljava/lang/String;)Lsk/mimac/slideshow/communication/Peer;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/communication/Peer;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPeers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/Peer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Network;->wanEstimationLog:Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    return-object v0
.end method

.method public removePeer(Lsk/mimac/slideshow/communication/Peer;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/Network;->peers:Ljava/util/Map;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMyPeer(Lsk/mimac/slideshow/communication/Peer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Network;->myPeer:Lsk/mimac/slideshow/communication/Peer;

    return-void
.end method
