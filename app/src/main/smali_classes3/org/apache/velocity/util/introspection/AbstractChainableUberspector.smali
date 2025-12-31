.class public abstract Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;
.super Lorg/apache/velocity/util/introspection/UberspectImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/ChainableUberspector;


# instance fields
.field protected inner:Lorg/apache/velocity/util/introspection/Uberspect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/util/introspection/UberspectImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->inner:Lorg/apache/velocity/util/introspection/Uberspect;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/velocity/util/introspection/Uberspect;->getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->inner:Lorg/apache/velocity/util/introspection/Uberspect;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/velocity/util/introspection/Uberspect;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->inner:Lorg/apache/velocity/util/introspection/Uberspect;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/velocity/util/introspection/Uberspect;->getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->inner:Lorg/apache/velocity/util/introspection/Uberspect;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/velocity/util/introspection/Uberspect;->getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->inner:Lorg/apache/velocity/util/introspection/Uberspect;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/velocity/util/introspection/Uberspect;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->inner:Lorg/apache/velocity/util/introspection/Uberspect;

    :cond_0
    :goto_0
    return-void
.end method

.method public wrap(Lorg/apache/velocity/util/introspection/Uberspect;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;->inner:Lorg/apache/velocity/util/introspection/Uberspect;

    return-void
.end method
