.class abstract Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->access$300(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->access$300(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public abstract getMapping()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_ITERATOR:Lorg/apache/commons/collections4/ResettableIterator;

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    :cond_1
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

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    :cond_1
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    :cond_1
    return p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
