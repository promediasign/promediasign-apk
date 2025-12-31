.class final Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Deque;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/googlecode/concurrentlinkedhashmap/Linked<",
        "TE;>;>",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Deque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field first:Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field last:Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->offerLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->add(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    return p1
.end method

.method public addFirst(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->offerFirst(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic addFirst(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->addFirst(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    return-void
.end method

.method public addLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->offerLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->addLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    return-void
.end method

.method public checkNotEmpty()V
    .locals 1

    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->getNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v2

    invoke-interface {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setPrevious(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    invoke-interface {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setNext(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    iput-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    return-void
.end method

.method public contains(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/Linked<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->getPrevious()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->getNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->contains(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$2;

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-direct {v0, p0, v1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$2;-><init>(Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    return-object v0
.end method

.method public element()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->getFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic element()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->element()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->checkNotEmpty()V

    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->peekFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirst()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->getFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->checkNotEmpty()V

    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->peekLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLast()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->getLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$1;

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-direct {v0, p0, v1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$1;-><init>(Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    return-object v0
.end method

.method public linkFirst(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setPrevious(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    invoke-interface {p1, v0}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setNext(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    :goto_0
    return-void
.end method

.method public linkLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setNext(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    invoke-interface {p1, v0}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setPrevious(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    :goto_0
    return-void
.end method

.method public moveToBack(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->unlink(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->linkLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    :cond_0
    return-void
.end method

.method public offer(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->offerLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->offer(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    return p1
.end method

.method public offerFirst(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->contains(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->linkFirst(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic offerFirst(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->offerFirst(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    return p1
.end method

.method public offerLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->contains(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->linkLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic offerLast(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->offerLast(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    return p1
.end method

.method public peek()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->peekFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->peek()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    return-object v0
.end method

.method public bridge synthetic peekFirst()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->peekFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public peekLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    return-object v0
.end method

.method public bridge synthetic peekLast()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->peekLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->pollFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->poll()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->unlinkFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic pollFirst()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->pollFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->unlinkLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic pollLast()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->pollLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public pop()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->removeFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pop()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->pop()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public push(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->addFirst(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    return-void
.end method

.method public bridge synthetic push(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->push(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    return-void
.end method

.method public remove()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->removeFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->remove()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->contains(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->unlink(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->remove(Lcom/googlecode/concurrentlinkedhashmap/Linked;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public removeFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->checkNotEmpty()V

    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->pollFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeFirst()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->removeFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->checkNotEmpty()V

    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->pollLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeLast()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->removeLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->getNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public unlink(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->getPrevious()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    invoke-interface {p1}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->getNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setNext(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    invoke-interface {p1, v2}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setPrevious(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    :goto_0
    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setPrevious(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    invoke-interface {p1, v2}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setNext(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    :goto_1
    return-void
.end method

.method public unlinkFirst()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-interface {v0}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->getNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setNext(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    iput-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-nez v1, :cond_0

    iput-object v2, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setPrevious(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    :goto_0
    return-object v0
.end method

.method public unlinkLast()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-interface {v0}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->getPrevious()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setPrevious(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    iput-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->last:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-nez v1, :cond_0

    iput-object v2, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->first:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->setNext(Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    :goto_0
    return-object v0
.end method
