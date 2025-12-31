.class public Lorg/apache/velocity/util/introspection/LinkingUberspector;
.super Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;
.source "SourceFile"


# instance fields
.field private leftUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

.field private rightUberspect:Lorg/apache/velocity/util/introspection/Uberspect;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/util/introspection/Uberspect;Lorg/apache/velocity/util/introspection/Uberspect;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/util/introspection/AbstractChainableUberspector;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->leftUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->rightUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    return-void
.end method


# virtual methods
.method public getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->leftUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0, p1, p2}, Lorg/apache/velocity/util/introspection/Uberspect;->getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->rightUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0, p1, p2}, Lorg/apache/velocity/util/introspection/Uberspect;->getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->leftUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/velocity/util/introspection/Uberspect;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->rightUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/velocity/util/introspection/Uberspect;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->leftUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/velocity/util/introspection/Uberspect;->getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->rightUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/velocity/util/introspection/Uberspect;->getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->leftUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/velocity/util/introspection/Uberspect;->getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->rightUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/velocity/util/introspection/Uberspect;->getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->leftUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0}, Lorg/apache/velocity/util/introspection/Uberspect;->init()V

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/LinkingUberspector;->rightUberspect:Lorg/apache/velocity/util/introspection/Uberspect;

    invoke-interface {v0}, Lorg/apache/velocity/util/introspection/Uberspect;->init()V

    return-void
.end method
