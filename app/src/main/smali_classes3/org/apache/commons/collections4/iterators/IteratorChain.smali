.class public Lorg/apache/commons/collections4/iterators/IteratorChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private isLocked:Z

.field private final iteratorChain:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/Iterator<",
            "+TE;>;>;"
        }
    .end annotation
.end field

.field private lastUsedIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    return-void
.end method

.method private checkLocked()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IteratorChain cannot be changed after the first use of a method from the Iterator interface"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private lockChain()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->checkLocked()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->lockChain()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->updateCurrentIterator()V

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->lockChain()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->updateCurrentIterator()V

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->lockChain()V

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->updateCurrentIterator()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public updateCurrentIterator()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_2

    :cond_2
    return-void
.end method
