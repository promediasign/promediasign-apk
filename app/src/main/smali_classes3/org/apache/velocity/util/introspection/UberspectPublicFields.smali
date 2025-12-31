.class public Lorg/apache/velocity/util/introspection/UberspectPublicFields;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/Uberspect;
.implements Lorg/apache/velocity/util/RuntimeServicesAware;


# instance fields
.field protected introspector:Lorg/apache/velocity/util/introspection/Introspector;

.field protected log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;
    .locals 3

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectPublicFields;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectPublicFields;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p3, Lorg/apache/velocity/util/introspection/UberspectImpl$VelGetterImpl;

    invoke-direct {p3, v0}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelGetterImpl;-><init>(Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;)V

    :cond_1
    return-object p3
.end method

.method public getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;
    .locals 6

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance p1, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectPublicFields;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectPublicFields;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p4, Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;

    invoke-direct {p4, p1}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;-><init>(Lorg/apache/velocity/runtime/parser/node/SetExecutor;)V

    :cond_1
    return-object p4
.end method

.method public init()V
    .locals 2

    new-instance v0, Lorg/apache/velocity/util/introspection/Introspector;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectPublicFields;->log:Lorg/slf4j/Logger;

    invoke-direct {v0, v1}, Lorg/apache/velocity/util/introspection/Introspector;-><init>(Lorg/slf4j/Logger;)V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectPublicFields;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    return-void
.end method

.method public setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 1

    const-string v0, "rendering"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/UberspectPublicFields;->log:Lorg/slf4j/Logger;

    return-void
.end method
