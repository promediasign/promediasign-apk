.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySetIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsMapEntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySetIterator;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySetIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/keyvalue/UnmodifiableMapEntry;

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySetIterator;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    iget-object v2, v2, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->wrappedCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/keyvalue/UnmodifiableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
