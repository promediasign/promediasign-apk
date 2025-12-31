.class public Lorg/apache/velocity/runtime/parser/node/MapSetExecutor;
.super Lorg/apache/velocity/runtime/parser/node/SetExecutor;
.source "SourceFile"


# instance fields
.field private final property:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    iput-object p3, p0, Lorg/apache/velocity/runtime/parser/node/MapSetExecutor;->property:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/parser/node/MapSetExecutor;->discover(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public discover(Ljava/lang/Class;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    aget-object v4, p1, v3

    .line 12
    .line 13
    const-class v5, Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/MapSetExecutor;->property:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string p1, "put"

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    new-array v1, v1, [Ljava/lang/Class;

    .line 29
    .line 30
    const-class v3, Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v3, v1, v2

    .line 33
    .line 34
    aput-object v3, v1, v0

    .line 35
    .line 36
    invoke-virtual {v5, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->setMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "Exception while looking for put(\'"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/MapSetExecutor;->property:Ljava/lang/String;

    .line 56
    .line 57
    const-string v2, "\') method"

    .line 58
    .line 59
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    .line 64
    .line 65
    invoke-static {v1, v0, p1, v0, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    throw p1

    .line 70
    :goto_2
    throw p1

    .line 71
    :cond_0
    add-int/2addr v3, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :goto_3
    return-void
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/MapSetExecutor;->property:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
