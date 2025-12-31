.class public Ludt/receiver/ReceiverLossList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backingList:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ludt/receiver/ReceiverLossListEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Ludt/receiver/ReceiverLossList;->backingList:Ljava/util/concurrent/PriorityBlockingQueue;

    return-void
.end method


# virtual methods
.method public getFilteredSequenceNumbers(JZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ludt/receiver/ReceiverLossList;->backingList:Ljava/util/concurrent/PriorityBlockingQueue;

    const/4 v2, 0x0

    new-array v3, v2, [Ludt/receiver/ReceiverLossListEntry;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ludt/receiver/ReceiverLossListEntry;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ludt/receiver/ReceiverLossListEntry;->getLastFeedbackTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4}, Ludt/receiver/ReceiverLossListEntry;->getK()J

    move-result-wide v7

    mul-long v7, v7, p1

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    invoke-virtual {v4}, Ludt/receiver/ReceiverLossListEntry;->getSequenceNumber()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    invoke-virtual {v4}, Ludt/receiver/ReceiverLossListEntry;->feedback()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFirstEntry()Ludt/receiver/ReceiverLossListEntry;
    .locals 1

    iget-object v0, p0, Ludt/receiver/ReceiverLossList;->backingList:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ludt/receiver/ReceiverLossListEntry;

    return-object v0
.end method

.method public insert(Ludt/receiver/ReceiverLossListEntry;)V
    .locals 2

    iget-object v0, p0, Ludt/receiver/ReceiverLossList;->backingList:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ludt/receiver/ReceiverLossList;->backingList:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ludt/receiver/ReceiverLossList;->backingList:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

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

.method public remove(J)V
    .locals 2

    iget-object v0, p0, Ludt/receiver/ReceiverLossList;->backingList:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Ludt/receiver/ReceiverLossListEntry;

    invoke-direct {v1, p1, p2}, Ludt/receiver/ReceiverLossListEntry;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ludt/receiver/ReceiverLossList;->backingList:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
