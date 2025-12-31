.class public Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/TransactionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final map:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "TK;",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;"
        }
    .end annotation
.end field

.field final mapId:I

.field readLogId:J

.field private transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/db/TransactionStore$Transaction;Lorg/h2/mvstore/MVMap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/db/TransactionStore$Transaction;",
            "Lorg/h2/mvstore/MVMap<",
            "TK;",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->readLogId:J

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iput-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    iput p3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->mapId:I

    return-void
.end method

.method private getValue(Ljava/lang/Object;J)Lorg/h2/mvstore/db/TransactionStore$VersionedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getUndoLog()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getValue(Ljava/lang/Object;JLorg/h2/mvstore/db/TransactionStore$VersionedValue;)Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->trySet(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "Entry is locked"

    new-array p2, v1, [Ljava/lang/Object;

    const/16 v0, 0x65

    invoke-static {v0, p1, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entryIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;

    invoke-direct {v0, p0, p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;-><init>(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->readLogId:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TV;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getValue(Ljava/lang/Object;J)Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public getInstance(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/db/TransactionStore$Transaction;",
            "J)",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    iget v2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->mapId:I

    invoke-direct {v0, p1, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;-><init>(Lorg/h2/mvstore/db/TransactionStore$Transaction;Lorg/h2/mvstore/MVMap;I)V

    invoke-virtual {v0, p2, p3}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->setSavepoint(J)V

    return-object v0
.end method

.method public getKeyType()Lorg/h2/mvstore/type/DataType;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getLatest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    return-object v0
.end method

.method public getUndoLog()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget-object v0, v0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v0, v0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;JLorg/h2/mvstore/db/TransactionStore$VersionedValue;)Lorg/h2/mvstore/db/TransactionStore$VersionedValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ")",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;"
        }
    .end annotation

    .line 2
    :goto_0
    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    iget-wide v1, p4, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return-object p4

    :cond_1
    invoke-static {v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->getTransactionId(J)I

    move-result v3

    iget-object v4, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget v4, v4, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    if-ne v3, v4, :cond_2

    invoke-static {v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->getLogId(J)J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-gez v5, :cond_2

    return-object p4

    :cond_2
    iget-object p4, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget-object p4, p4, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-object p4, p4, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/Object;

    if-nez p4, :cond_4

    iget-object p4, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget-object p4, p4, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-object p4, p4, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p4}, Lorg/h2/mvstore/MVStore;->isReadOnly()Z

    move-result p4

    if-eqz p4, :cond_3

    return-object v0

    :cond_3
    iget-object p4, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p4, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :goto_1
    check-cast p4, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    aget-object p4, p4, v0

    goto :goto_1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    return-object p1
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isSameTransaction(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    invoke-static {v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->getTransactionId(J)I

    move-result p1

    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget v1, v1, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->keyIterator(Ljava/lang/Object;Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public keyIterator(Ljava/lang/Object;Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;-><init>(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/MVMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "The value may not be null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putCommitted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "The value may not be null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    invoke-direct {v0}, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;-><init>()V

    iput-object p2, v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2, p1, v0}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    :goto_1
    return-object p1
.end method

.method public relativeKey(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TK;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    if-lez v2, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->getKeyIndex(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/MVMap;->getKey(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setSavepoint(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->readLogId:J

    return-void
.end method

.method public sizeAsLong()J
    .locals 10

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget-object v2, v2, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v2, v2, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v7, 0x1

    cmp-long v9, v3, v0

    if-lez v9, :cond_3

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget-object v1, v1, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v1, v1, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->readLogId:J

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    invoke-virtual {p0, v2, v3, v4, v9}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getValue(Ljava/lang/Object;JLorg/h2/mvstore/db/TransactionStore$VersionedValue;)Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    iget-object v1, v2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    add-long/2addr v5, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    return-wide v5

    :cond_3
    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v0

    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget-object v3, v3, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v3}, Lorg/h2/mvstore/db/TransactionStore;->createTempMap()Lorg/h2/mvstore/MVMap;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v9, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->mapId:I

    if-eq v6, v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v5, :cond_4

    sub-long/2addr v0, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_6
    :try_start_5
    iget-object v4, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget-object v4, v4, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v4, v4, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v4, v3}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V

    monitor-exit v2

    return-wide v0

    :catchall_2
    move-exception v0

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget-object v1, v1, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v1, v1, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V

    throw v0

    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public sizeAsLongMax()J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public tryPut(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "The value may not be null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->trySet(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public tryRemove(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->trySet(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public trySet(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    iget-wide v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->readLogId:J

    invoke-direct {p0, p1, v3, v4}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getValue(Ljava/lang/Object;J)Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    move-result-object p3

    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v3, p3, v0}, Lorg/h2/mvstore/MVMap;->areValuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-wide v3, v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    invoke-static {v3, v4}, Lorg/h2/mvstore/db/TransactionStore;->getTransactionId(J)I

    move-result p3

    int-to-long v3, p3

    iget-object p3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget p3, p3, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    return v1

    :cond_0
    iget-object p3, v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    new-instance p3, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    invoke-direct {p3}, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;-><init>()V

    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget v4, v3, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    iget-wide v5, v3, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    invoke-static {v4, v5, v6}, Lorg/h2/mvstore/db/TransactionStore;->getOperationId(IJ)J

    move-result-wide v3

    iput-wide v3, p3, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    iput-object p2, p3, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_4

    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->mapId:I

    invoke-virtual {p2, v3, p1, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2, p1, p3}, Lorg/h2/mvstore/MVMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    if-eqz p1, :cond_3

    :goto_1
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logUndo()V

    return v2

    :cond_3
    return v1

    :cond_4
    iget-wide v3, v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->mapId:I

    invoke-virtual {p2, v3, p1, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2, p1, v0, p3}, Lorg/h2/mvstore/MVMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    invoke-static {v3, v4}, Lorg/h2/mvstore/db/TransactionStore;->getTransactionId(J)I

    move-result p2

    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    iget v4, v3, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    if-ne p2, v4, :cond_8

    iget p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->mapId:I

    invoke-virtual {v3, p2, p1, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2, p1, v0, p3}, Lorg/h2/mvstore/MVMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    return v2
.end method

.method public wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TK;>;Z)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;-><init>(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;Ljava/util/Iterator;Z)V

    return-object v0
.end method
