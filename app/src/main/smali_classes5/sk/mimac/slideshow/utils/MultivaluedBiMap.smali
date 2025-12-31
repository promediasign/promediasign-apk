.class public Lsk/mimac/slideshow/utils/MultivaluedBiMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Lorg/apache/commons/collections4/MultiValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->map:Lorg/apache/commons/collections4/MultiValuedMap;

    return-void
.end method


# virtual methods
.method public getAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->map:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->removeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->map:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public removeValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->map:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
