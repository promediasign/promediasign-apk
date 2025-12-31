.class public Lorg/apache/velocity/runtime/parser/node/PutExecutor;
.super Lorg/apache/velocity/runtime/parser/node/SetExecutor;
.source "SourceFile"


# instance fields
.field private final introspector:Lorg/apache/velocity/util/introspection/Introspector;

.field private final property:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/PutExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    iput-object p5, p0, Lorg/apache/velocity/runtime/parser/node/PutExecutor;->property:Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Lorg/apache/velocity/runtime/parser/node/PutExecutor;->discover(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public discover(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/PutExecutor;->property:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-array v0, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object p2, v0, v2

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x2

    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object v0, v3, v2

    .line 16
    .line 17
    aput-object p2, v3, v1

    .line 18
    .line 19
    move-object v0, v3

    .line 20
    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/PutExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 21
    .line 22
    const-string v1, "put"

    .line 23
    .line 24
    invoke-virtual {p2, p1, v1, v0}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->setMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :catch_1
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Exception while looking for put(\'"

    .line 39
    .line 40
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    aget-object v0, v0, v2

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "\') method"

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    .line 58
    .line 59
    invoke-static {v0, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    throw p1

    .line 64
    :goto_2
    throw p1
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/PutExecutor;->property:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p2, v3, v2

    move-object v0, v3

    :goto_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
