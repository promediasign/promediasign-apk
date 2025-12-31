.class public Lio/milton/http/json/JsonPropPatchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final eventManager:Lio/milton/event/EventManager;

.field private final patchSetter:Lio/milton/http/webdav/PropPatchSetter;

.field private final permissionService:Lio/milton/property/PropertyAuthoriser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/json/JsonPropPatchHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/json/JsonPropPatchHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/webdav/PropPatchSetter;Lio/milton/property/PropertyAuthoriser;Lio/milton/event/EventManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/milton/http/json/JsonPropPatchHandler;->patchSetter:Lio/milton/http/webdav/PropPatchSetter;

    iput-object p2, p0, Lio/milton/http/json/JsonPropPatchHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    iput-object p3, p0, Lio/milton/http/json/JsonPropPatchHandler;->eventManager:Lio/milton/event/EventManager;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "patchSetter is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public process(Lio/milton/resource/Resource;Ljava/lang/String;Ljava/util/Map;)Lio/milton/http/webdav/PropFindResponse;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/milton/http/webdav/PropFindResponse;"
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    sget-object v1, Lio/milton/http/json/JsonPropPatchHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "process"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v4, p3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v6, v3, v11

    aget-object v3, v3, v10

    new-instance v12, Ljavax/xml/namespace/QName;

    invoke-direct {v12, v6, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v12, Ljavax/xml/namespace/QName;

    sget-object v6, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v6}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v3, Lio/milton/http/json/JsonPropPatchHandler;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v13, "field: "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v12, Lio/milton/http/webdav/PropPatchParseResult;

    const/4 v2, 0x0

    invoke-direct {v12, v1, v2}, Lio/milton/http/webdav/PropPatchParseResult;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    sget-object v13, Lio/milton/http/json/JsonPropPatchHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v13}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check permissions with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lio/milton/http/json/JsonPropPatchHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v0, Lio/milton/http/json/JsonPropPatchHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    invoke-static {}, Lio/milton/http/HttpManager;->request()Lio/milton/http/Request;

    move-result-object v3

    sget-object v4, Lio/milton/http/Request$Method;->PROPPATCH:Lio/milton/http/Request$Method;

    sget-object v5, Lio/milton/property/PropertyAuthoriser$PropertyPermission;->WRITE:Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lio/milton/property/PropertyAuthoriser;->checkPermissions(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/property/PropertyAuthoriser$PropertyPermission;Ljava/util/Set;Lio/milton/resource/Resource;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "authorisation errors: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from permissionService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lio/milton/http/json/JsonPropPatchHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-interface {v13}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/property/PropertyAuthoriser$CheckResult;

    sget-object v3, Lio/milton/http/json/JsonPropPatchHandler;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lio/milton/property/PropertyAuthoriser$CheckResult;->getField()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v2}, Lio/milton/property/PropertyAuthoriser$CheckResult;->getStatus()Lio/milton/http/Response$Status;

    move-result-object v5

    invoke-virtual {v2}, Lio/milton/property/PropertyAuthoriser$CheckResult;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v12, " - field error: "

    aput-object v12, v6, v11

    aput-object v4, v6, v10

    aput-object v5, v6, v9

    aput-object v2, v6, v8

    invoke-static {v3, v6}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lio/milton/http/exceptions/NotAuthorizedException;

    invoke-direct {v1, p1}, Lio/milton/http/exceptions/NotAuthorizedException;-><init>(Lio/milton/resource/Resource;)V

    throw v1

    :cond_4
    iget-object v1, v0, Lio/milton/http/json/JsonPropPatchHandler;->patchSetter:Lio/milton/http/webdav/PropPatchSetter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "setting properties with"

    aput-object v3, v2, v11

    aput-object v1, v2, v10

    invoke-static {v13, v2}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    iget-object v1, v0, Lio/milton/http/json/JsonPropPatchHandler;->patchSetter:Lio/milton/http/webdav/PropPatchSetter;

    move-object/from16 v2, p2

    invoke-interface {v1, v2, v12, p1}, Lio/milton/http/webdav/PropPatchSetter;->setProperties(Ljava/lang/String;Lio/milton/http/webdav/PropPatchParseResult;Lio/milton/resource/Resource;)Lio/milton/http/webdav/PropFindResponse;

    move-result-object v1

    iget-object v2, v0, Lio/milton/http/json/JsonPropPatchHandler;->eventManager:Lio/milton/event/EventManager;

    if-eqz v2, :cond_5

    const-string v2, "fire event"

    invoke-interface {v13, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v2, v0, Lio/milton/http/json/JsonPropPatchHandler;->eventManager:Lio/milton/event/EventManager;

    new-instance v3, Lio/milton/event/PropPatchEvent;

    invoke-direct {v3, p1, v1}, Lio/milton/event/PropPatchEvent;-><init>(Lio/milton/resource/Resource;Lio/milton/http/webdav/PropFindResponse;)V

    invoke-interface {v2, v3}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    goto :goto_3

    :cond_5
    const-string v2, "no event manager"

    invoke-interface {v13, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, v0, Lio/milton/http/json/JsonPropPatchHandler;->patchSetter:Lio/milton/http/webdav/PropPatchSetter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "Encountered errors setting fields with patch setter"

    aput-object v4, v3, v11

    aput-object v2, v3, v10

    invoke-static {v13, v3}, Lio/milton/common/LogUtils;->warn(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    :cond_6
    invoke-interface {v13}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v1}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/milton/http/webdav/PropFindResponse$NameAndError;

    sget-object v5, Lio/milton/http/json/JsonPropPatchHandler;->log:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Lio/milton/http/webdav/PropFindResponse$NameAndError;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v4}, Lio/milton/http/webdav/PropFindResponse$NameAndError;->getError()Ljava/lang/String;

    move-result-object v4

    new-array v7, v8, [Ljava/lang/Object;

    const-string v12, " - field error setting properties: "

    aput-object v12, v7, v11

    aput-object v6, v7, v10

    aput-object v4, v7, v9

    invoke-static {v5, v7}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    return-object v1
.end method
