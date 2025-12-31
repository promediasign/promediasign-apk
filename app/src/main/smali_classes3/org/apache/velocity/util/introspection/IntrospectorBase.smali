.class public abstract Lorg/apache/velocity/util/introspection/IntrospectorBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

.field private final introspectorCache:Lorg/apache/velocity/util/introspection/IntrospectorCache;

.field protected final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/IntrospectorBase;->log:Lorg/slf4j/Logger;

    new-instance v0, Lorg/apache/velocity/util/introspection/IntrospectorCache;

    invoke-direct {v0, p1, p2}, Lorg/apache/velocity/util/introspection/IntrospectorCache;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/IntrospectorBase;->introspectorCache:Lorg/apache/velocity/util/introspection/IntrospectorCache;

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/IntrospectorBase;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    return-void
.end method


# virtual methods
.method public getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/IntrospectorBase;->getIntrospectorCache()Lorg/apache/velocity/util/introspection/IntrospectorCache;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "class object is null!"

    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/introspection/IntrospectorCache;->getFieldMap(Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/ClassFieldMap;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/introspection/IntrospectorCache;->put(Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/ClassMap;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/introspection/IntrospectorCache;->getFieldMap(Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/ClassFieldMap;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p2}, Lorg/apache/velocity/util/introspection/ClassFieldMap;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method public getIntrospectorCache()Lorg/apache/velocity/util/introspection/IntrospectorCache;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/IntrospectorBase;->introspectorCache:Lorg/apache/velocity/util/introspection/IntrospectorCache;

    return-object v0
.end method

.method public getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/IntrospectorBase;->getIntrospectorCache()Lorg/apache/velocity/util/introspection/IntrospectorCache;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "class object is null!"

    invoke-static {p1, v3, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lorg/apache/velocity/util/introspection/IntrospectorCache;->get(Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/ClassMap;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/introspection/IntrospectorCache;->put(Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/ClassMap;

    move-result-object v2

    :cond_0
    const-string p1, "params object is null!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, p1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v2, p2, p1}, Lorg/apache/velocity/util/introspection/ClassMap;->findMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
