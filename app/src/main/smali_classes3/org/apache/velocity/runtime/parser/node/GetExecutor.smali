.class public Lorg/apache/velocity/runtime/parser/node/GetExecutor;
.super Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;
.source "SourceFile"


# instance fields
.field private final introspector:Lorg/apache/velocity/util/introspection/Introspector;

.field private params:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/node/GetExecutor;->params:[Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->log:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/GetExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p4, p1, v0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/GetExecutor;->params:[Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p3}, Lorg/apache/velocity/runtime/parser/node/GetExecutor;->discover(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public discover(Ljava/lang/Class;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/GetExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 3
    .line 4
    const-string v2, "get"

    .line 5
    .line 6
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/GetExecutor;->params:[Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v1, p1, v2, v3}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->setMethod(Ljava/lang/reflect/Method;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->getMethod()Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->getMethod()Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    array-length v1, p1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    aget-object v1, p1, v0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const-class v1, Ljava/lang/Number;

    .line 42
    .line 43
    aget-object p1, p1, v0

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->setMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Exception while looking for get(\'"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/GetExecutor;->params:[Ljava/lang/Object;

    .line 69
    .line 70
    aget-object v0, v2, v0

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, "\') method"

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->log:Lorg/slf4j/Logger;

    .line 85
    .line 86
    invoke-static {v1, v0, p1, v0, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    throw p1

    .line 91
    :goto_2
    throw p1
.end method

.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/GetExecutor;->params:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
