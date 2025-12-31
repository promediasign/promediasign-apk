.class public Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;
.super Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;
.source "SourceFile"


# instance fields
.field private final introspector:Lorg/apache/velocity/util/introspection/Introspector;

.field private final wrapArray:Z


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->log:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    iput-boolean p5, p0, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;->wrapArray:Z

    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;->discover(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public discover(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v2, "get"

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, p1, v3, v0}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->setMethod(Ljava/lang/reflect/Method;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_2

    .line 54
    :catch_1
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    goto :goto_0

    .line 61
    :goto_1
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v2, p1, v1, v0}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->setMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void

    .line 75
    :goto_2
    const-string v0, "Exception while looking for property getter for \'"

    .line 76
    .line 77
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->log:Lorg/slf4j/Logger;

    .line 82
    .line 83
    invoke-static {v0, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    throw p1

    .line 88
    :goto_3
    throw p1
.end method

.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;->wrapArray:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/velocity/util/ArrayListWrapper;

    invoke-direct {v0, p1}, Lorg/apache/velocity/util/ArrayListWrapper;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getIntrospector()Lorg/apache/velocity/util/introspection/Introspector;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    return-object v0
.end method
