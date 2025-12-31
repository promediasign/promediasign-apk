.class final Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field final capacity:J

.field final concurrencyLevel:I

.field final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/EvictionListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->concurrencyLevel:I

    iput v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->concurrencyLevel:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->data:Ljava/util/Map;

    iget-wide v0, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->capacity:J

    iput-wide v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->capacity:J

    iget-object v0, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;

    iget-object p1, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;

    invoke-direct {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;-><init>()V

    iget v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->concurrencyLevel:I

    invoke-virtual {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->concurrencyLevel(I)Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->capacity:J

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->maximumWeightedCapacity(J)Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;

    invoke-virtual {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->listener(Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;)Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    invoke-virtual {v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->weigher(Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;)Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->build()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;->data:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
