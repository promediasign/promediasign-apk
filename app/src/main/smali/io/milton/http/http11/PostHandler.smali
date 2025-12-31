.class public Lio/milton/http/http11/PostHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ExistingEntityHandler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field private final responseHandler:Lio/milton/http/http11/Http11ResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/PostHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/PostHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/ResourceHandlerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/PostHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    iput-object p2, p0, Lio/milton/http/http11/PostHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    return-void
.end method


# virtual methods
.method public getMethods()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->POST:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    instance-of p1, p1, Lio/milton/resource/PostableResource;

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/PostHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/milton/http/ResourceHandlerHelper;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V

    return-void
.end method

.method public processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 3

    move-object v0, p4

    check-cast v0, Lio/milton/resource/PostableResource;

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getCustomPostHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Lio/milton/event/PostEvent;

    invoke-direct {v1, p4}, Lio/milton/event/PostEvent;-><init>(Lio/milton/resource/Resource;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    invoke-virtual {v1}, Lio/milton/event/PostEvent;->getReturnRedirectUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2}, Lio/milton/http/Request;->getFiles()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/milton/resource/PostableResource;->processForm(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/milton/http/http11/PostHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "Redircect set by event handler"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    sget-object p4, Lio/milton/http/http11/PostHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "redirect: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p4, p0, Lio/milton/http/http11/PostHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p4, p3, p2, p1}, Lio/milton/http/http11/Http11ResponseHandler;->respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lio/milton/http/http11/PostHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "respond with content"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/http11/PostHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p4, p3, p2, v0}, Lio/milton/http/http11/Http11ResponseHandler;->respondContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;)V

    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 15

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getFiles()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lio/milton/http/HttpManager;->onPost(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Ljava/util/Map;Ljava/util/Map;)V

    move-object v0, p0

    iget-object v6, v0, Lio/milton/http/http11/PostHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getFiles()Ljava/util/Map;

    move-result-object v14

    const/4 v12, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, p0

    invoke-virtual/range {v6 .. v14}, Lio/milton/http/ResourceHandlerHelper;->processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;ZLjava/util/Map;Ljava/util/Map;)V

    return-void
.end method
