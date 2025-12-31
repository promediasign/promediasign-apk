.class public Lsk/mimac/slideshow/communication/utils/WanEstimationLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private overrideWanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

.field private final wanAddresses:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x6

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->overrideWanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public estimateWan()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 9

    iget-object v0, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->overrideWanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/communication/address/IPAddress;

    monitor-exit v0

    return-object v1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->wanAddresses:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v3, :cond_5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/communication/address/IPAddress;

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    goto :goto_2

    :cond_6
    monitor-exit v0

    return-object v2

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOverrideWanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->overrideWanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-void
.end method
