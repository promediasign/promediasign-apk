.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;
.super Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InverseViewMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
        "TK;TV;>.ViewIterator;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->navigateNext()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;->next()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
