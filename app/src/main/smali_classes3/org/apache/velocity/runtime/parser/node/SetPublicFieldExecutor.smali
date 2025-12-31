.class public Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;
.super Lorg/apache/velocity/runtime/parser/node/SetExecutor;
.source "SourceFile"


# instance fields
.field private field:Ljava/lang/reflect/Field;

.field private final introspector:Lorg/apache/velocity/util/introspection/Introspector;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->field:Ljava/lang/reflect/Field;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4, p5}, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->discover(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public discover(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p3, p0, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Lorg/apache/velocity/util/introspection/IntrospectorBase;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->setField(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :catch_1
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 26
    :goto_1
    const-string p3, "Exception while looking for public field \'"

    .line 27
    .line 28
    invoke-static {p3, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object p3, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    .line 33
    .line 34
    invoke-static {p3, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    throw p1

    .line 39
    :goto_2
    throw p1
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getIntrospector()Lorg/apache/velocity/util/introspection/Introspector;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->getField()Ljava/lang/reflect/Field;

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

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SetPublicFieldExecutor;->field:Ljava/lang/reflect/Field;

    return-void
.end method
