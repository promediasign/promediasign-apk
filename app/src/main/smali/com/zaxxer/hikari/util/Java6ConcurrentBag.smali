.class public final Lcom/zaxxer/hikari/util/Java6ConcurrentBag;
.super Lcom/zaxxer/hikari/util/ConcurrentBag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zaxxer/hikari/util/Java6ConcurrentBag$Synchronizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zaxxer/hikari/util/ConcurrentBag<",
        "Lcom/zaxxer/hikari/pool/PoolBagEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/util/IBagStateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/util/ConcurrentBag;-><init>(Lcom/zaxxer/hikari/util/IBagStateListener;)V

    return-void
.end method


# virtual methods
.method public createQueuedSynchronizer()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
    .locals 2

    new-instance v0, Lcom/zaxxer/hikari/util/Java6ConcurrentBag$Synchronizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zaxxer/hikari/util/Java6ConcurrentBag$Synchronizer;-><init>(Lcom/zaxxer/hikari/util/Java6ConcurrentBag;Lcom/zaxxer/hikari/util/Java6ConcurrentBag$1;)V

    return-object v0
.end method

.method public getCount(I)I
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sharedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-object v2, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public values(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/zaxxer/hikari/pool/PoolBagEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sharedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sharedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-object v3, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
