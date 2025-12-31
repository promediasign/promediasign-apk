.class final Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/util/introspection/ClassMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodCache"
.end annotation


# static fields
.field private static final CACHE_MISS:Ljava/lang/Object;

.field private static final NULL_ARG:Ljava/lang/String;

.field private static final convertPrimitives:Ljava/util/Map;


# instance fields
.field private final cache:Ljava/util/Map;

.field private final log:Lorg/slf4j/Logger;

.field private final methodMap:Lorg/apache/velocity/util/introspection/MethodMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->CACHE_MISS:Ljava/lang/Object;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->NULL_ARG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->convertPrimitives:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->cache:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->log:Lorg/slf4j/Logger;

    new-instance p1, Lorg/apache/velocity/util/introspection/MethodMap;

    invoke-direct {p1, p2}, Lorg/apache/velocity/util/introspection/MethodMap;-><init>(Lorg/apache/velocity/util/introspection/ConversionHandler;)V

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->methodMap:Lorg/apache/velocity/util/introspection/MethodMap;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;Lorg/apache/velocity/util/introspection/ClassMap$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->put(Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private makeMethodKey(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p2

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v2, p2, v0

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->NULL_ARG:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private makeMethodKey(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->convertPrimitives:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private put(Ljava/lang/reflect/Method;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->makeMethodKey(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->cache:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->methodMap:Lorg/apache/velocity/util/introspection/MethodMap;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/introspection/MethodMap;->add(Ljava/lang/reflect/Method;)V

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->log:Lorg/slf4j/Logger;

    const-string v1, "Adding {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->makeMethodKey(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->CACHE_MISS:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->methodMap:Lorg/apache/velocity/util/introspection/MethodMap;

    invoke-virtual {v1, p1, p2}, Lorg/apache/velocity/util/introspection/MethodMap;->find(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/velocity/util/introspection/MethodMap$AmbiguousException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->cache:Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->cache:Ljava/util/Map;

    sget-object v1, Lorg/apache/velocity/util/introspection/ClassMap$MethodCache;->CACHE_MISS:Ljava/lang/Object;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :cond_2
    :goto_0
    check-cast v1, Ljava/lang/reflect/Method;

    return-object v1
.end method
