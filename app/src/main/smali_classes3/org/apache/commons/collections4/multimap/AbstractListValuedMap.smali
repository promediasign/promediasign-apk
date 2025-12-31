.class public abstract Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;
.super Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/ListValuedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;,
        Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ListValuedMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public abstract createCollection()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->wrappedCollection(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic wrappedCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->wrappedCollection(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public wrappedCollection(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$WrappedList;-><init>(Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;Ljava/lang/Object;)V

    return-object v0
.end method
