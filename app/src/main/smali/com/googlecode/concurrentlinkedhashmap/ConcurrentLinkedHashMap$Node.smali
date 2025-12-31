.class final Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/concurrentlinkedhashmap/Linked;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue<",
        "TV;>;>;",
        "Lcom/googlecode/concurrentlinkedhashmap/Linked<",
        "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
        "TK;TV;>.Node;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;"
        }
    .end annotation
.end field

.field prev:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Ljava/lang/Object;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    invoke-direct {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getNext()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->next:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    return-object v0
.end method

.method public bridge synthetic getNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->getNext()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrevious()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->prev:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    return-object v0
.end method

.method public bridge synthetic getPrevious()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->getPrevious()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    iget-object v0, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public makeDead()V
    .locals 6

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    new-instance v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    iget-object v2, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    iget-object v1, v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weightedSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget v0, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->weight:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method public makeRetired()V
    .locals 4

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    iget-object v2, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->value:Ljava/lang/Object;

    iget v3, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->weight:I

    neg-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public setNext(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->next:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    return-void
.end method

.method public bridge synthetic setNext(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->setNext(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    return-void
.end method

.method public setPrevious(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->prev:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    return-void
.end method

.method public bridge synthetic setPrevious(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->setPrevious(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    return-void
.end method

.method public tryToRetire(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue<",
            "TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    iget-object v1, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->value:Ljava/lang/Object;

    iget v2, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->weight:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
