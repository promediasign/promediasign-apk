.class public Lorg/apache/velocity/runtime/parser/node/BooleanPropertyExecutor;
.super Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;
.source "SourceFile"


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

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/node/BooleanPropertyExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Z)V

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
    const-string v2, "is"

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
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;->getIntrospector()Lorg/apache/velocity/util/introspection/Introspector;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, p1, v3, v0}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->setMethod(Ljava/lang/reflect/Method;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :catch_1
    move-exception p1

    .line 57
    goto :goto_3

    .line 58
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    goto :goto_0

    .line 63
    :goto_1
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;->getIntrospector()Lorg/apache/velocity/util/introspection/Introspector;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2, p1, v1, v0}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->setMethod(Ljava/lang/reflect/Method;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->getMethod()Ljava/lang/reflect/Method;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 93
    .line 94
    if-eq p1, v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->getMethod()Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-class v0, Ljava/lang/Boolean;

    .line 105
    .line 106
    if-eq p1, v0, :cond_2

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->setMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    :cond_2
    return-void

    .line 113
    :goto_2
    const-string v0, "Exception while looking for boolean property getter for \'"

    .line 114
    .line 115
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->log:Lorg/slf4j/Logger;

    .line 120
    .line 121
    invoke-static {v0, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    throw p1

    .line 126
    :goto_3
    throw p1
.end method
