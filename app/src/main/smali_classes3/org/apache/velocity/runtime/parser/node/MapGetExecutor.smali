.class public Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;
.super Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/parser/node/MapGetExecutor$MapGetMethod;
    }
.end annotation


# instance fields
.field private final isAlive:Z

.field private final property:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->log:Lorg/slf4j/Logger;

    iput-object p3, p0, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;->property:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;->discover(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;->isAlive:Z

    return-void
.end method


# virtual methods
.method public discover(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;->property:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;->property:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor$MapGetMethod;->instance()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;->isAlive:Z

    return v0
.end method
