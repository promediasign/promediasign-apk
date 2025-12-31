.class public final Lorg/apache/velocity/util/introspection/IntrospectorCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CACHEDUMP_MSG:Ljava/lang/String; = "IntrospectorCache detected classloader change. Dumping cache."


# instance fields
.field private final classFieldMapCache:Ljava/util/Map;

.field private final classMapCache:Ljava/util/Map;

.field private final classNameCache:Ljava/util/Set;

.field private final conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

.field private final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classMapCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classFieldMapCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classNameCache:Ljava/util/Set;

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->log:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classMapCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classMapCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classFieldMapCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classNameCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->log:Lorg/slf4j/Logger;

    const-string v2, "IntrospectorCache detected classloader change. Dumping cache."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/ClassMap;
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classMapCache:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/util/introspection/ClassMap;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classMapCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classNameCache:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/IntrospectorCache;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getFieldMap(Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/ClassFieldMap;
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classFieldMapCache:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/util/introspection/ClassFieldMap;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classMapCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classNameCache:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/IntrospectorCache;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public put(Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/ClassMap;
    .locals 4

    new-instance v0, Lorg/apache/velocity/util/introspection/ClassMap;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/velocity/util/introspection/ClassMap;-><init>(Ljava/lang/Class;Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V

    new-instance v1, Lorg/apache/velocity/util/introspection/ClassFieldMap;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->log:Lorg/slf4j/Logger;

    invoke-direct {v1, p1, v2}, Lorg/apache/velocity/util/introspection/ClassFieldMap;-><init>(Ljava/lang/Class;Lorg/slf4j/Logger;)V

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classMapCache:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classMapCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classFieldMapCache:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/IntrospectorCache;->classNameCache:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
