.class final Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;
.super Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddTask"
.end annotation


# instance fields
.field final node:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

.field final weight:I


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    invoke-direct {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;)V

    iput p3, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;->weight:I

    iput-object p2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;->node:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    return-void
.end method


# virtual methods
.method public isWrite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    iget-object v0, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weightedSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget v3, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;->weight:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;->node:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    iget-object v0, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionDeque:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;->node:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    invoke-virtual {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->add(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evict()V

    :cond_0
    return-void
.end method
