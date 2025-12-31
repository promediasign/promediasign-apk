.class public Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/resource/ResourceCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/resource/ResourceCacheImpl$LRUMap;
    }
.end annotation


# instance fields
.field protected cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/velocity/runtime/resource/Resource;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lorg/slf4j/Logger;

.field protected rsvc:Lorg/apache/velocity/runtime/RuntimeServices;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f000000    # 0.5f

    const/16 v2, 0x1e

    const/16 v3, 0x200

    invoke-direct {v0, v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->cache:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public enumerateKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/apache/velocity/runtime/resource/Resource;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/resource/Resource;

    return-object p1
.end method

.method public initialize(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 3

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "resource.manager.defaultcache.size"

    const/16 v1, 0x59

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    new-instance v0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl$LRUMap;

    invoke-direct {v0, p1}, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl$LRUMap;-><init>(I)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->cache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->cache:Ljava/util/Map;

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog()Lorg/slf4j/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->cache:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initialized ({}) with {} cache map."

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Lorg/apache/velocity/runtime/resource/Resource;)Lorg/apache/velocity/runtime/resource/Resource;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/resource/Resource;

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/velocity/runtime/resource/Resource;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/resource/Resource;

    return-object p1
.end method
