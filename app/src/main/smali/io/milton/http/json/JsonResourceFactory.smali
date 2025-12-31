.class public Lio/milton/http/json/JsonResourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ResourceFactory;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private contentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final eventManager:Lio/milton/event/EventManager;

.field private maxAgeSecsPropFind:Ljava/lang/Long;

.field private final propFindHandler:Lio/milton/http/json/JsonPropFindHandler;

.field private final propPatchHandler:Lio/milton/http/json/JsonPropPatchHandler;

.field private final wrapped:Lio/milton/http/ResourceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/json/JsonResourceFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/json/JsonResourceFactory;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/ResourceFactory;Lio/milton/event/EventManager;Lio/milton/http/json/JsonPropFindHandler;Lio/milton/http/json/JsonPropPatchHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/milton/http/json/JsonResourceFactory;->maxAgeSecsPropFind:Ljava/lang/Long;

    const-string v0, "application/json"

    const-string v1, "application/x-javascript"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/json/JsonResourceFactory;->contentTypes:Ljava/util/List;

    iput-object p1, p0, Lio/milton/http/json/JsonResourceFactory;->wrapped:Lio/milton/http/ResourceFactory;

    iput-object p3, p0, Lio/milton/http/json/JsonResourceFactory;->propFindHandler:Lio/milton/http/json/JsonPropFindHandler;

    iput-object p4, p0, Lio/milton/http/json/JsonResourceFactory;->propPatchHandler:Lio/milton/http/json/JsonPropPatchHandler;

    iput-object p2, p0, Lio/milton/http/json/JsonResourceFactory;->eventManager:Lio/milton/event/EventManager;

    sget-object p1, Lio/milton/http/json/JsonResourceFactory;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "created with: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private isAjaxLoginPath(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/.login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isMatchingPath(Lio/milton/common/Path;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_DAV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;
    .locals 9

    sget-object v0, Lio/milton/http/json/JsonResourceFactory;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getResource"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v4, 0x2

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    invoke-static {p2}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object v1

    invoke-virtual {v1}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v5

    invoke-static {}, Lio/milton/http/HttpManager;->request()Lio/milton/http/Request;

    move-result-object v6

    invoke-interface {v6}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5}, Lio/milton/http/json/JsonResourceFactory;->isMatchingPath(Lio/milton/common/Path;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const-string p2, "getResource: is matching path"

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lio/milton/http/json/JsonResourceFactory;->wrapped:Lio/milton/http/ResourceFactory;

    invoke-virtual {p2}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v5, p1, p2}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, v1, v6}, Lio/milton/http/json/JsonResourceFactory;->wrapResource(Ljava/lang/String;Lio/milton/resource/Resource;Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "returning a"

    aput-object v4, v1, v3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    return-object v8

    :cond_1
    invoke-direct {p0, p2}, Lio/milton/http/json/JsonResourceFactory;->isAjaxLoginPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/milton/http/json/JsonResourceFactory;->wrapped:Lio/milton/http/ResourceFactory;

    const-string v2, "/"

    invoke-interface {v1, p1, v2}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Found a login path, but couldnt get a root resource to delegate login to"

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-object v8

    :cond_2
    new-instance v0, Lio/milton/http/json/AjaxLoginResource;

    invoke-direct {v0, p2, p1}, Lio/milton/http/json/AjaxLoginResource;-><init>(Ljava/lang/String;Lio/milton/resource/Resource;)V

    return-object v0

    :cond_3
    const-string v1, "getResource: not matching path"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/json/JsonResourceFactory;->wrapped:Lio/milton/http/ResourceFactory;

    invoke-interface {v0, p1, p2}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p1

    return-object p1
.end method

.method public wrapResource(Ljava/lang/String;Lio/milton/resource/Resource;Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;
    .locals 4

    sget-object v0, Lio/milton/http/json/JsonResourceFactory;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "wrapResource: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    sget-object v1, Lio/milton/http/Request$Method;->PROPFIND:Lio/milton/http/Request$Method;

    iget-object v1, v1, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Lio/milton/resource/PropFindableResource;

    if-eqz v1, :cond_0

    new-instance p1, Lio/milton/http/json/PropFindJsonResource;

    check-cast p2, Lio/milton/resource/PropFindableResource;

    iget-object p3, p0, Lio/milton/http/json/JsonResourceFactory;->propFindHandler:Lio/milton/http/json/JsonPropFindHandler;

    iget-object v0, p0, Lio/milton/http/json/JsonResourceFactory;->maxAgeSecsPropFind:Ljava/lang/Long;

    invoke-direct {p1, p2, p3, p4, v0}, Lio/milton/http/json/PropFindJsonResource;-><init>(Lio/milton/resource/PropFindableResource;Lio/milton/http/json/JsonPropFindHandler;Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Located a resource for PROPFIND path, but it does not implement PropFindableResource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lio/milton/http/Request$Method;->PROPPATCH:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lio/milton/http/json/PropPatchJsonResource;

    iget-object p3, p0, Lio/milton/http/json/JsonResourceFactory;->propPatchHandler:Lio/milton/http/json/JsonPropPatchHandler;

    invoke-direct {p1, p2, p3, p4}, Lio/milton/http/json/PropPatchJsonResource;-><init>(Lio/milton/resource/Resource;Lio/milton/http/json/JsonPropPatchHandler;Ljava/lang/String;)V

    return-object p1

    :cond_2
    sget-object v0, Lio/milton/http/Request$Method;->PUT:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lio/milton/resource/PutableResource;

    if-eqz v0, :cond_3

    new-instance p1, Lio/milton/http/json/PutJsonResource;

    check-cast p2, Lio/milton/resource/PutableResource;

    iget-object p3, p0, Lio/milton/http/json/JsonResourceFactory;->eventManager:Lio/milton/event/EventManager;

    invoke-direct {p1, p2, p4, p3}, Lio/milton/http/json/PutJsonResource;-><init>(Lio/milton/resource/PutableResource;Ljava/lang/String;Lio/milton/event/EventManager;)V

    return-object p1

    :cond_3
    sget-object v0, Lio/milton/http/Request$Method;->MKCOL:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p2, Lio/milton/resource/MakeCollectionableResource;

    if-eqz v0, :cond_4

    new-instance p1, Lio/milton/http/json/MkcolJsonResource;

    check-cast p2, Lio/milton/resource/MakeCollectionableResource;

    iget-object p3, p0, Lio/milton/http/json/JsonResourceFactory;->eventManager:Lio/milton/event/EventManager;

    invoke-direct {p1, p2, p4, p3}, Lio/milton/http/json/MkcolJsonResource;-><init>(Lio/milton/resource/MakeCollectionableResource;Ljava/lang/String;Lio/milton/event/EventManager;)V

    return-object p1

    :cond_4
    sget-object p4, Lio/milton/http/Request$Method;->COPY:Lio/milton/http/Request$Method;

    iget-object p4, p4, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    instance-of p4, p2, Lio/milton/resource/CopyableResource;

    if-eqz p4, :cond_5

    new-instance p3, Lio/milton/http/json/CopyJsonResource;

    check-cast p2, Lio/milton/resource/CopyableResource;

    iget-object p4, p0, Lio/milton/http/json/JsonResourceFactory;->wrapped:Lio/milton/http/ResourceFactory;

    invoke-direct {p3, p1, p2, p4}, Lio/milton/http/json/CopyJsonResource;-><init>(Ljava/lang/String;Lio/milton/resource/CopyableResource;Lio/milton/http/ResourceFactory;)V

    return-object p3

    :cond_5
    sget-object p4, Lio/milton/http/Request$Method;->MOVE:Lio/milton/http/Request$Method;

    iget-object p4, p4, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    instance-of p3, p2, Lio/milton/resource/MoveableResource;

    if-eqz p3, :cond_6

    new-instance p3, Lio/milton/http/json/MoveJsonResource;

    check-cast p2, Lio/milton/resource/MoveableResource;

    iget-object p4, p0, Lio/milton/http/json/JsonResourceFactory;->wrapped:Lio/milton/http/ResourceFactory;

    invoke-direct {p3, p1, p2, p4}, Lio/milton/http/json/MoveJsonResource;-><init>(Ljava/lang/String;Lio/milton/resource/MoveableResource;Lio/milton/http/ResourceFactory;)V

    return-object p3

    :cond_6
    return-object p2
.end method
