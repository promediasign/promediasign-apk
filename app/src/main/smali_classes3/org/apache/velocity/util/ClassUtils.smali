.class public abstract Lorg/apache/velocity/util/ClassUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/SimpleNode;Z)Lorg/apache/velocity/util/introspection/VelMethod;
    .locals 7

    :try_start_0
    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;

    invoke-direct {v0, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {p4, v0}, Lorg/apache/velocity/context/InternalContextAdapter;->icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v2, v1, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->contextData:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object p4, v1, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->thingy:Ljava/lang/Object;

    check-cast p4, Lorg/apache/velocity/util/introspection/VelMethod;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :catch_2
    move-exception p0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getRuntimeServices()Lorg/apache/velocity/runtime/RuntimeServices;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;

    move-result-object v1

    new-instance v2, Lorg/apache/velocity/util/introspection/Info;

    invoke-virtual {p5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v4

    invoke-virtual {p5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, p3, p0, p1, v2}, Lorg/apache/velocity/util/introspection/Uberspect;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    new-instance v2, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    invoke-direct {v2}, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->contextData:Ljava/lang/Class;

    iput-object v1, v2, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->thingy:Ljava/lang/Object;

    invoke-interface {p4, v0, v2}, Lorg/apache/velocity/context/InternalContextAdapter;->icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V

    :cond_1
    move-object p4, v1

    :goto_0
    if-nez p4, :cond_6

    if-eqz p6, :cond_5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p6, 0x0

    :goto_1
    array-length v0, p1

    if-ge p6, v0, :cond_4

    aget-object v0, p2, p6

    if-nez v0, :cond_2

    const-string v0, "null"

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge p6, v0, :cond_3

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/apache/velocity/exception/MethodInvocationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Object \'"

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' does not contain method "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v5

    invoke-virtual {p5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v6

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    throw p1
    :try_end_0
    .catch Lorg/apache/velocity/exception/MethodInvocationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    return-object p4

    :goto_3
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    const-string p2, "ASTMethod.execute() : exception from introspection"

    invoke-direct {p1, p2, p0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_4
    throw p0

    :goto_5
    throw p0
.end method

.method public static getNewInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/apache/velocity/util/ClassUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    :goto_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_2
    return-object p0
.end method
