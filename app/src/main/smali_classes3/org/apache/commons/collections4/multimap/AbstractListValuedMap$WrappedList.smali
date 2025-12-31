.class Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;
.super Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->createCollection()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->createCollection()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return p1

    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/ListUtils;->isEqualList(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMapping()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMapping()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->hashCodeForList(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    :cond_0
    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
