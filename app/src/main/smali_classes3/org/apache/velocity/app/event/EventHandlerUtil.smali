.class public abstract Lorg/apache/velocity/app/event/EventHandlerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static includeEvent(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lorg/apache/velocity/runtime/RuntimeServices;->getApplicationEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/velocity/app/event/EventCartridge;->includeEvent(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalEventContext;->getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/apache/velocity/app/event/EventCartridge;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/velocity/app/event/EventCartridge;->includeEvent(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object p2

    :goto_1
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    const-string p2, "Exception in event handler."

    invoke-direct {p1, p2, p0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    throw p0
.end method

.method public static invalidGetMethod(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;
    .locals 7

    :try_start_0
    invoke-interface {p0}, Lorg/apache/velocity/runtime/RuntimeServices;->getApplicationEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/velocity/app/event/EventCartridge;->invalidGetMethod(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalEventContext;->getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lorg/apache/velocity/app/event/EventCartridge;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/velocity/app/event/EventCartridge;->invalidGetMethod(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    const-string p2, "Exception in event handler."

    invoke-direct {p1, p2, p0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    throw p0
.end method

.method public static invalidMethod(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;
    .locals 7

    :try_start_0
    invoke-interface {p0}, Lorg/apache/velocity/runtime/RuntimeServices;->getApplicationEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/velocity/app/event/EventCartridge;->invalidMethod(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalEventContext;->getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lorg/apache/velocity/app/event/EventCartridge;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/velocity/app/event/EventCartridge;->invalidMethod(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    const-string p2, "Exception in event handler."

    invoke-direct {p1, p2, p0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    throw p0
.end method

.method public static invalidSetMethod(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lorg/apache/velocity/runtime/RuntimeServices;->getApplicationEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/velocity/app/event/EventCartridge;->invalidSetMethod(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalEventContext;->getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/apache/velocity/app/event/EventCartridge;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/velocity/app/event/EventCartridge;->invalidSetMethod(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    const-string p2, "Exception in event handler."

    invoke-direct {p1, p2, p0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    throw p0
.end method

.method public static methodException(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-interface {p0}, Lorg/apache/velocity/runtime/RuntimeServices;->getApplicationEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/velocity/app/event/EventCartridge;->hasMethodExceptionEventHandler()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/velocity/app/event/EventCartridge;->methodException(Lorg/apache/velocity/context/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalEventContext;->getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lorg/apache/velocity/app/event/EventCartridge;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/velocity/app/event/EventCartridge;->methodException(Lorg/apache/velocity/context/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    throw p4

    :goto_0
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    const-string p2, "Exception in event handler."

    invoke-direct {p1, p2, p0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    throw p0
.end method

.method public static referenceInsert(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lorg/apache/velocity/runtime/RuntimeServices;->getApplicationEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/velocity/app/event/EventCartridge;->referenceInsert(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalEventContext;->getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/apache/velocity/app/event/EventCartridge;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/velocity/app/event/EventCartridge;->referenceInsert(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object p3

    :goto_1
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    const-string p2, "Exception in event handler."

    invoke-direct {p1, p2, p0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    throw p0
.end method
