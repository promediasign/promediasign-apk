.class public Lorg/apache/velocity/util/introspection/SecureUberspector;
.super Lorg/apache/velocity/util/introspection/UberspectImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/util/introspection/UberspectImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    check-cast v1, Lorg/apache/velocity/util/introspection/SecureIntrospectorControl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/velocity/util/introspection/SecureIntrospectorControl;->checkObjectExecutePermission(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/util/introspection/UberspectImpl;->getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cannot retrieve iterator from {} due to security restrictions."

    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getConfiguration()Lorg/apache/velocity/util/ExtProperties;

    move-result-object v0

    const-string v1, "introspector.restrict.packages"

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getConfiguration()Lorg/apache/velocity/util/ExtProperties;

    move-result-object v1

    const-string v2, "introspector.restrict.classes"

    invoke-virtual {v1, v2}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/velocity/util/introspection/SecureIntrospectorImpl;

    iget-object v3, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/velocity/util/introspection/SecureIntrospectorImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;Lorg/slf4j/Logger;)V

    iput-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    return-void
.end method
