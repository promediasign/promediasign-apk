.class final Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;
.super Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

.field final weightDifference:I


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

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    iput p3, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;->weightDifference:I

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

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    iget-object v0, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weightedSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget v3, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;->weightDifference:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    invoke-super {p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;->run()V

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evict()V

    return-void
.end method
