.class public final Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.field capacity:J

.field concurrencyLevel:I

.field initialCapacity:I

.field listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/EvictionListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->capacity:J

    invoke-static {}, Lcom/googlecode/concurrentlinkedhashmap/Weighers;->entrySingleton()Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    const/16 v0, 0x10

    iput v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->initialCapacity:I

    iput v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->concurrencyLevel:I

    sget-object v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;->INSTANCE:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;

    return-void
.end method


# virtual methods
.method public build()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->capacity:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkState(Z)V

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$1;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkArgument(Z)V

    iput p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->concurrencyLevel:I

    return-object p0
.end method

.method public listener(Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;)Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/EvictionListener<",
            "TK;TV;>;)",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;

    return-object p0
.end method

.method public maximumWeightedCapacity(J)Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->capacity:J

    return-object p0
.end method

.method public weigher(Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;)Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher<",
            "-TK;-TV;>;)",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/googlecode/concurrentlinkedhashmap/Weighers;->entrySingleton()Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/googlecode/concurrentlinkedhashmap/Weighers;->entrySingleton()Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$BoundedEntryWeigher;

    invoke-direct {v0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$BoundedEntryWeigher;-><init>(Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    return-object p0
.end method
