.class public Lorg/apache/velocity/util/introspection/ClassMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;

.field private final log:Lorg/slf4j/Logger;

.field private final methodCache:Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/slf4j/Logger;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/velocity/util/introspection/ClassMap;-><init>(Ljava/lang/Class;Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/ClassMap;->clazz:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/ClassMap;->log:Lorg/slf4j/Logger;

    const-string v0, "================================================================="

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v1, "== Class: {}"

    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lorg/apache/velocity/util/introspection/ClassMap;->createMethodCache(Lorg/apache/velocity/util/introspection/ConversionHandler;)Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/ClassMap;->methodCache:Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private createMethodCache(Lorg/apache/velocity/util/introspection/ConversionHandler;)Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;
    .locals 5

    new-instance v0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/ClassMap;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;Lorg/apache/velocity/util/introspection/ClassMap$1;)V

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/ClassMap;->getCachedClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/apache/velocity/util/introspection/ClassMap;->populateMethodCacheWith(Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;Ljava/lang/Class;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-direct {p0, v0, v4}, Lorg/apache/velocity/util/introspection/ClassMap;->populateMethodCacheWithInterface(Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;Ljava/lang/Class;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private populateMethodCacheWith(Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;Ljava/lang/Class;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ClassMap;->log:Lorg/slf4j/Logger;

    const-string v1, "Reflecting {}"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v3}, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->access$100(Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ClassMap;->log:Lorg/slf4j/Logger;

    const-string v1, "While accessing methods of {}:"

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private populateMethodCacheWithInterface(Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;Ljava/lang/Class;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/util/introspection/ClassMap;->populateMethodCacheWith(Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;Ljava/lang/Class;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lorg/apache/velocity/util/introspection/ClassMap;->populateMethodCacheWithInterface(Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public findMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ClassMap;->methodCache:Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public getCachedClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ClassMap;->clazz:Ljava/lang/Class;

    return-object v0
.end method
