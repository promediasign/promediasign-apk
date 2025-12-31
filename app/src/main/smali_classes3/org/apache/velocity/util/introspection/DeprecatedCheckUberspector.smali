.class public Lorg/apache/velocity/util/introspection/DeprecatedCheckUberspector;
.super Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/Uberspect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;-><init>()V

    return-void
.end method

.method private logWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Lorg/apache/velocity/util/introspection/Info;->getLine()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4}, Lorg/apache/velocity/util/introspection/Info;->getColumn()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object v1, v2, p1

    const/4 p1, 0x4

    aput-object p4, v2, p1

    const-string p1, "Deprecated usage of {} [{}] in {}@{},{}"

    invoke-interface {v0, p1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/velocity/util/introspection/VelMethod;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_1

    const-class v0, Ljava/lang/Deprecated;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    const-string p3, "method"

    invoke-interface {p2}, Lorg/apache/velocity/util/introspection/VelMethod;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, v0, p4}, Lorg/apache/velocity/util/introspection/DeprecatedCheckUberspector;->logWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V

    :cond_1
    return-object p2
.end method

.method public getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "getter"

    invoke-interface {p2}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lorg/apache/velocity/util/introspection/DeprecatedCheckUberspector;->logWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V

    :cond_1
    return-object p2
.end method

.method public getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/velocity/util/introspection/VelPropertySet;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_1

    const-class v0, Ljava/lang/Deprecated;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    const-string p3, "setter"

    invoke-interface {p2}, Lorg/apache/velocity/util/introspection/VelPropertySet;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, v0, p4}, Lorg/apache/velocity/util/introspection/DeprecatedCheckUberspector;->logWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V

    :cond_1
    return-object p2
.end method

.method public init()V
    .locals 2

    invoke-super {p0}, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->init()V

    new-instance v0, Lorg/apache/velocity/util/introspection/Introspector;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    invoke-direct {v0, v1}, Lorg/apache/velocity/util/introspection/Introspector;-><init>(Lorg/slf4j/Logger;)V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    return-void
.end method
