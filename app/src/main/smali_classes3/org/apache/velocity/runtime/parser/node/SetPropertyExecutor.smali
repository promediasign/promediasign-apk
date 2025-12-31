.class public Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;
.super Lorg/apache/velocity/runtime/parser/node/SetExecutor;
.source "SourceFile"


# instance fields
.field private final introspector:Lorg/apache/velocity/util/introspection/Introspector;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4, p5}, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->discover(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public discover(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p3, v0, v1

    .line 6
    .line 7
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "set"

    .line 10
    .line 11
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->setMethod(Ljava/lang/reflect/Method;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->isAlive()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_0
    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :catch_1
    move-exception p1

    .line 58
    goto :goto_3

    .line 59
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    goto :goto_0

    .line 64
    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {v1, p1, p3, v0}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->setMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    :goto_2
    const-string p3, "Exception while looking for property setter for \'"

    .line 79
    .line 80
    invoke-static {p3, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object p3, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    .line 85
    .line 86
    invoke-static {p3, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    throw p1

    .line 91
    :goto_3
    throw p1
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getIntrospector()Lorg/apache/velocity/util/introspection/Introspector;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    return-object v0
.end method
