.class public Lorg/apache/velocity/VelocityContext;
.super Lorg/apache/velocity/context/AbstractContext;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private context:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/velocity/VelocityContext;-><init>(Ljava/util/Map;Lorg/apache/velocity/context/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/apache/velocity/context/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/velocity/context/Context;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lorg/apache/velocity/context/AbstractContext;-><init>(Lorg/apache/velocity/context/Context;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/velocity/VelocityContext;->context:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/apache/velocity/VelocityContext;->context:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/velocity/VelocityContext;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/velocity/VelocityContext;->context:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, v1, Lorg/apache/velocity/VelocityContext;->context:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public internalContainsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/VelocityContext;->context:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public internalGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/VelocityContext;->context:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/VelocityContext;->context:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalRemove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/VelocityContext;->context:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
