.class public Lio/milton/http/http11/OptionsHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ResourceHandler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private enableAuthorisation:Z

.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field private final responseHandler:Lio/milton/http/http11/Http11ResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/OptionsHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/OptionsHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/HandlerHelper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/OptionsHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    iput-object p3, p0, Lio/milton/http/http11/OptionsHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    iput-object p2, p0, Lio/milton/http/http11/OptionsHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    iput-boolean p4, p0, Lio/milton/http/http11/OptionsHandler;->enableAuthorisation:Z

    return-void
.end method

.method private determineMethodsAllowed(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/HttpManager;",
            "Lio/milton/resource/Resource;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getAllHandlers()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/Handler;

    invoke-interface {v1, p2}, Lio/milton/http/Handler;->isCompatible(Lio/milton/resource/Resource;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/milton/http/Handler;->getMethods()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-static {v4}, Lio/milton/http/Request$Method;->valueOf(Ljava/lang/String;)Lio/milton/http/Request$Method;

    move-result-object v5

    iget-object v6, p0, Lio/milton/http/http11/OptionsHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v6, p2, v5}, Lio/milton/http/HandlerHelper;->isNotCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request$Method;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getMethods()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->OPTIONS:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/OptionsHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/milton/http/ResourceHandlerHelper;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V

    return-void
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-boolean v2, p0, Lio/milton/http/http11/OptionsHandler;->enableAuthorisation:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/milton/http/http11/OptionsHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v2, p1, p4, p2}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/milton/http/http11/OptionsHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v2, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v9}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1, p2, p3, p4}, Lio/milton/http/HttpManager;->onProcessResourceStart(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    invoke-direct {p0, p1, p4}, Lio/milton/http/http11/OptionsHandler;->determineMethodsAllowed(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lio/milton/http/http11/OptionsHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v3, p4, p3, p2, v2}, Lio/milton/http/http11/Http11ResponseHandler;->respondWithOptions(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v9}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    return-void

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v9, v3, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v5 .. v10}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    throw v2
.end method
