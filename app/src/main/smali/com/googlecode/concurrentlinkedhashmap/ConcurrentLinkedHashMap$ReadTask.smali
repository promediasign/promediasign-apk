.class Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;
.super Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadTask"
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


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    invoke-direct {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;)V

    iput-object p2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;->node:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    return-void
.end method


# virtual methods
.method public isWrite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    iget-object v0, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionDeque:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;->node:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    invoke-virtual {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->contains(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    iget-object v0, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionDeque:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;->node:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    invoke-virtual {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->moveToBack(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    :cond_0
    return-void
.end method
