.class abstract Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractLinkedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field cursor:Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;->this$0:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;->cursor:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    return-void
.end method


# virtual methods
.method public abstract computeNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;->cursor:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;->cursor:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;->computeNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;->cursor:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;->next()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
