.class public Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;
.super Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;
.source "SourceFile"


# instance fields
.field private field:Ljava/lang/reflect/Field;

.field private final introspector:Lorg/apache/velocity/util/introspection/Introspector;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->field:Ljava/lang/reflect/Field;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->log:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->discover(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public discover(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/introspection/IntrospectorBase;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->setField(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    const-string v0, "Exception while looking for public field \'"

    .line 16
    .line 17
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->log:Lorg/slf4j/Logger;

    .line 22
    .line 23
    invoke-static {v0, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    throw p1

    .line 28
    :goto_1
    throw p1
.end method

.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getIntrospector()Lorg/apache/velocity/util/introspection/Introspector;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/PublicFieldExecutor;->field:Ljava/lang/reflect/Field;

    return-void
.end method
