.class final Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field current:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;->current:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;->current:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkState(Z)V

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;->current:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;->current:Ljava/lang/Object;

    return-void
.end method
