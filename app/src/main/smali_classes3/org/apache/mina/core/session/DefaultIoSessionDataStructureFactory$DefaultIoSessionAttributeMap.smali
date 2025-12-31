.class Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionAttributeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultIoSessionAttributeMap"
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public containsAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z
    .locals 0

    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public getAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeKeys(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 2
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p1

    return v1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_1
    monitor-exit p1

    return v1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    if-nez p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAttributeIfAbsent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p1

    return-object v0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
