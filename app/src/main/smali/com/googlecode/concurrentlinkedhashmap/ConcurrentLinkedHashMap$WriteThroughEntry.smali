.class final Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WriteThroughEntry;
.super Ljava/util/AbstractMap$SimpleEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap$SimpleEntry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WriteThroughEntry;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    iget-object p1, p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WriteThroughEntry;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Ljava/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method
