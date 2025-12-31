.class public Lorg/apache/velocity/util/introspection/Introspector;
.super Lorg/apache/velocity/util/introspection/IntrospectorBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/velocity/util/introspection/Introspector;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/util/introspection/IntrospectorBase;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V

    return-void
.end method


# virtual methods
.method public getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/util/introspection/IntrospectorBase;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Lorg/apache/velocity/util/introspection/MethodMap$AmbiguousException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    const-string v0, "Introspection Error: Ambiguous method invocation "

    .line 7
    .line 8
    const-string v1, "("

    .line 9
    .line 10
    invoke-static {v0, p2, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    array-length v1, p3

    .line 16
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    const-string v1, ", "

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    aget-object v1, p3, v0

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-string v1, "null"

    .line 30
    .line 31
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_1

    .line 44
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string p3, ") for class "

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lorg/apache/velocity/util/introspection/IntrospectorBase;->log:Lorg/slf4j/Logger;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    return-object p1
.end method
