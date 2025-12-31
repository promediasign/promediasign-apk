.class public Lorg/apache/velocity/util/introspection/ClassFieldMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final clazz:Ljava/lang/Class;

.field private final fieldCache:Ljava/util/Map;

.field private final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/slf4j/Logger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/ClassFieldMap;->clazz:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/ClassFieldMap;->log:Lorg/slf4j/Logger;

    invoke-direct {p0}, Lorg/apache/velocity/util/introspection/ClassFieldMap;->createFieldCache()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/ClassFieldMap;->fieldCache:Ljava/util/Map;

    return-void
.end method

.method private createFieldCache()Ljava/util/Map;
    .locals 6

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/ClassFieldMap;->getCachedClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/apache/velocity/util/introspection/ClassFieldMap;->populateFieldCacheWith(Ljava/util/Map;Ljava/lang/Class;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-direct {p0, v0, v5}, Lorg/apache/velocity/util/introspection/ClassFieldMap;->populateFieldCacheWithInterface(Ljava/util/Map;Ljava/lang/Class;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private populateFieldCacheWith(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ClassFieldMap;->log:Lorg/slf4j/Logger;

    const-string v1, "While accessing fields of {}:"

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private populateFieldCacheWithInterface(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/util/introspection/ClassFieldMap;->populateFieldCacheWith(Ljava/util/Map;Ljava/lang/Class;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lorg/apache/velocity/util/introspection/ClassFieldMap;->populateFieldCacheWithInterface(Ljava/util/Map;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ClassFieldMap;->fieldCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    return-object p1
.end method

.method public getCachedClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ClassFieldMap;->clazz:Ljava/lang/Class;

    return-object v0
.end method
