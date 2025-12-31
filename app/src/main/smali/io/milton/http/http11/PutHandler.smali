.class public Lio/milton/http/http11/PutHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Handler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final matchHelper:Lio/milton/http/http11/MatchHelper;

.field private final putHelper:Lio/milton/http/http11/PutHelper;

.field private final responseHandler:Lio/milton/http/http11/Http11ResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/PutHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/HandlerHelper;Lio/milton/http/http11/PutHelper;Lio/milton/http/http11/MatchHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    iput-object p2, p0, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    iput-object p3, p0, Lio/milton/http/http11/PutHandler;->putHelper:Lio/milton/http/http11/PutHelper;

    iput-object p4, p0, Lio/milton/http/http11/PutHandler;->matchHelper:Lio/milton/http/http11/MatchHelper;

    invoke-direct {p0}, Lio/milton/http/http11/PutHandler;->checkResponseHandler()V

    return-void
.end method

.method private checkResponseHandler()V
    .locals 2

    iget-object v0, p0, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    instance-of v0, v0, Lio/milton/http/webdav/WebDavResponseHandler;

    if-nez v0, :cond_0

    sget-object v0, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "response handler is not a WebDavResponseHandler, so locking and quota checking will not be enabled"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private findOrCreateFolders(Lio/milton/http/HttpManager;Ljava/lang/String;Lio/milton/common/Path;Lio/milton/http/Request;)Lio/milton/resource/CollectionResource;
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v1

    invoke-virtual {p3}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {v1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "Your resource factory returned a resource with a different name to that requested!!! Requested: "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - resource factory: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    instance-of p1, v1, Lio/milton/resource/CollectionResource;

    if-eqz p1, :cond_2

    check-cast v1, Lio/milton/resource/CollectionResource;

    return-object v1

    :cond_2
    sget-object p1, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "parent is not a collection: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-virtual {p3}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, p4}, Lio/milton/http/http11/PutHandler;->findOrCreateFolders(Lio/milton/http/HttpManager;Ljava/lang/String;Lio/milton/common/Path;Lio/milton/http/Request;)Lio/milton/resource/CollectionResource;

    move-result-object p2

    if-nez p2, :cond_4

    sget-object p1, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "couldnt find parent: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v0

    :cond_4
    invoke-virtual {p3}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v1

    if-nez v1, :cond_7

    sget-object v1, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find child: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    instance-of v2, p2, Lio/milton/resource/MakeCollectionableResource;

    if-eqz v2, :cond_6

    check-cast p2, Lio/milton/resource/MakeCollectionableResource;

    iget-object v0, p0, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v0, p1, p2, p4}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result p4

    if-eqz p4, :cond_5

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "autocreating new folder: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, p4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/milton/resource/MakeCollectionableResource;->createCollection(Ljava/lang/String;)Lio/milton/resource/CollectionResource;

    move-result-object p2

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object p1

    new-instance p3, Lio/milton/event/NewFolderEvent;

    invoke-direct {p3, p2}, Lio/milton/event/NewFolderEvent;-><init>(Lio/milton/resource/CollectionResource;)V

    invoke-interface {p1, p3}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    return-object p2

    :cond_5
    new-instance p1, Lio/milton/http/exceptions/NotAuthorizedException;

    invoke-direct {p1, p2}, Lio/milton/http/exceptions/NotAuthorizedException;-><init>(Lio/milton/resource/Resource;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "parent folder isnt a MakeCollectionableResource: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-object v0

    :cond_7
    instance-of p1, v1, Lio/milton/resource/CollectionResource;

    if-eqz p1, :cond_8

    check-cast v1, Lio/milton/resource/CollectionResource;

    return-object v1

    :cond_8
    sget-object p1, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "parent in URL is not a collection: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-object v0
.end method

.method private processCreate(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/PutableResource;Ljava/lang/String;)V
    .locals 9

    const-string v0, "createNew method on: "

    const-string v1, "getName on the created resource does not match the name requested by the client! requested: "

    sget-object v2, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {p4}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "process: putting to: "

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Lio/milton/common/LogUtils;->debug(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v3, p0, Lio/milton/http/http11/PutHandler;->putHelper:Lio/milton/http/http11/PutHelper;

    invoke-virtual {v3, p2}, Lio/milton/http/http11/PutHelper;->getContentLength(Lio/milton/http/Request;)Ljava/lang/Long;

    move-result-object v3

    iget-object v5, p0, Lio/milton/http/http11/PutHandler;->putHelper:Lio/milton/http/http11/PutHelper;

    invoke-virtual {v5, p2, p5}, Lio/milton/http/http11/PutHelper;->findContentTypes(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "PutHandler: creating resource of type: "

    aput-object v8, v4, v7

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lio/milton/common/LogUtils;->debug(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {p4, p5, v4, v3, v5}, Lio/milton/resource/PutableResource;->createNew(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p5, :cond_0

    invoke-interface {v3}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " - created: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, p4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object p4

    new-instance p5, Lio/milton/event/PutEvent;

    invoke-direct {p5, v3}, Lio/milton/event/PutEvent;-><init>(Lio/milton/resource/Resource;)V

    invoke-interface {p4, p5}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResponseHandler()Lio/milton/http/http11/Http11ResponseHandler;

    move-result-object p1

    invoke-interface {p1, v3, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondCreated(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " returned a null resource. Must return a reference to the newly created or modified resource"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "IOException reading input stream. Probably interrupted upload"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private processReplace(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/ReplaceableResource;)V
    .locals 9

    const-string v0, "partial put: "

    iget-object v1, p0, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v1, p1, p4, p2}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/milton/http/http11/PutHandler;->putHelper:Lio/milton/http/http11/PutHelper;

    invoke-virtual {p1, p4, p2}, Lio/milton/http/http11/PutHelper;->parseContentRange(Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/Range;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v1, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    instance-of v0, p4, Lio/milton/resource/GetableResource;

    if-eqz v0, :cond_3

    const-string v0, "doing partial put on a GetableResource"

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v0, "milton-partial"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Lio/milton/common/RandomFileOutputStream;

    invoke-direct {v3, v0}, Lio/milton/common/RandomFileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, p4

    check-cast v4, Lio/milton/resource/GetableResource;

    invoke-interface {v4, v3, v1, v1, v1}, Lio/milton/resource/GetableResource;->sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {p1}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v7

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {p1}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    invoke-interface {p2}, Lio/milton/http/Request;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v2, p1, v6, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-static {v2}, Lio/milton/common/FileUtils;->close(Ljava/io/Closeable;)V

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_2
    invoke-interface {p4, v0, p1}, Lio/milton/resource/ReplaceableResource;->replaceContent(Ljava/io/InputStream;Ljava/lang/Long;)V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_3
    invoke-static {v1}, Lio/milton/common/FileUtils;->close(Ljava/io/Closeable;)V

    throw p1

    :cond_3
    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    const-string p2, "Cant apply partial update. Resource does not support PartialllyUpdateableResource or GetableResource"

    invoke-direct {p1, p4, p2}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p2}, Lio/milton/http/Request;->getContentLengthHeader()Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2}, Lio/milton/http/Request;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_4
    iget-object p1, p0, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    sget-object p1, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "process: finished"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    :goto_5
    sget-object p2, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "IOException reading input stream. Probably interrupted upload: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method private respondInsufficientStorage(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/quota/StorageChecker$StorageErrorReason;)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    instance-of v1, v0, Lio/milton/http/webdav/WebDavResponseHandler;

    if-eqz v1, :cond_0

    check-cast v0, Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/webdav/WebDavResponseHandler;->respondInsufficientStorage(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/quota/StorageChecker$StorageErrorReason;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lio/milton/http/Response$Status;->SC_INSUFFICIENT_STORAGE:Lio/milton/http/Response$Status;

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    :goto_0
    return-void
.end method

.method private respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    instance-of v1, v0, Lio/milton/http/webdav/WebDavResponseHandler;

    if-eqz v1, :cond_0

    check-cast v0, Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/webdav/WebDavResponseHandler;->respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lio/milton/http/Response$Status;->SC_LOCKED:Lio/milton/http/Response$Status;

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMethods()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->PUT:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    instance-of p1, p1, Lio/milton/resource/PutableResource;

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, v7, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    iget-object v5, v7, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-virtual {v4, v5, v9, v10}, Lio/milton/http/HandlerHelper;->checkExpects(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/Request;Lio/milton/http/Response;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/milton/http/HttpManager;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/milton/http/http11/PutHandler;->log:Lorg/slf4j/Logger;

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getContentLengthHeader()Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "PUT request. Host:"

    aput-object v13, v12, v3

    aput-object v4, v12, v2

    const-string v13, " Url:"

    aput-object v13, v12, v1

    aput-object v5, v12, v0

    const-string v13, " content length header:"

    const/4 v14, 0x4

    aput-object v13, v12, v14

    const/4 v13, 0x5

    aput-object v11, v12, v13

    invoke-static {v6, v12}, Lio/milton/common/LogUtils;->debug(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    invoke-static {v5}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object v5

    invoke-virtual {v5}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v12

    invoke-interface {v12, v4, v11}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    iget-object v13, v7, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v13, v8, v11, v9}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v13

    if-nez v13, :cond_1

    iget-object v0, v7, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v11, v10, v9}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_1
    iget-object v13, v7, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v13, v9, v11}, Lio/milton/http/HandlerHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v0, "resource is locked, but not by the current user"

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    invoke-direct {v7, v9, v10, v11}, Lio/milton/http/http11/PutHandler;->respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_2
    iget-object v13, v7, Lio/milton/http/http11/PutHandler;->matchHelper:Lio/milton/http/http11/MatchHelper;

    invoke-virtual {v13, v11, v9}, Lio/milton/http/http11/MatchHelper;->checkIfMatch(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v0, "if-match comparison failed, aborting PUT request"

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v0, v7, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v9, v10, v11}, Lio/milton/http/http11/Http11ResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_3
    iget-object v13, v7, Lio/milton/http/http11/PutHandler;->matchHelper:Lio/milton/http/http11/MatchHelper;

    invoke-virtual {v13, v11, v9}, Lio/milton/http/http11/MatchHelper;->checkIfNoneMatch(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v0, "if-none-match comparison failed, aborting PUT request"

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v0, v7, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v9, v10, v11}, Lio/milton/http/http11/Http11ResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v13

    invoke-virtual {v5}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v14

    invoke-virtual {v14}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v4, v14}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v13

    instance-of v14, v13, Lio/milton/resource/CollectionResource;

    if-eqz v14, :cond_5

    check-cast v13, Lio/milton/resource/CollectionResource;

    iget-object v14, v7, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v14, v9, v13, v11, v4}, Lio/milton/http/HandlerHelper;->checkStorageOnReplace(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/resource/Resource;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    move-result-object v13

    goto :goto_0

    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "parent exists but is not a collection resource: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    move-object v13, v12

    goto :goto_0

    :cond_6
    iget-object v13, v7, Lio/milton/http/http11/PutHandler;->matchHelper:Lio/milton/http/http11/MatchHelper;

    invoke-virtual {v13, v12, v9}, Lio/milton/http/http11/MatchHelper;->checkIfMatch(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual/range {p1 .. p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v0

    invoke-virtual {v5}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v1

    invoke-virtual {v1}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    const-string v0, "if-match comparison failed on null resource, aborting PUT request"

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v0, v7, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v9, v10, v11}, Lio/milton/http/http11/Http11ResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_7
    iget-object v13, v7, Lio/milton/http/http11/PutHandler;->matchHelper:Lio/milton/http/http11/MatchHelper;

    invoke-virtual {v13, v12, v9}, Lio/milton/http/http11/MatchHelper;->checkIfNoneMatch(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v0, "if-none-match comparison failed on null resource, aborting PUT request"

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v0, v7, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v9, v10, v11}, Lio/milton/http/http11/Http11ResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_8
    iget-object v13, v7, Lio/milton/http/http11/PutHandler;->putHelper:Lio/milton/http/http11/PutHelper;

    invoke-virtual {v13, v8, v4, v5}, Lio/milton/http/http11/PutHelper;->findNearestParent(Lio/milton/http/HttpManager;Ljava/lang/String;Lio/milton/common/Path;)Lio/milton/resource/CollectionResource;

    move-result-object v13

    iget-object v14, v7, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v14, v8, v13, v9}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v14

    if-nez v14, :cond_9

    iget-object v0, v7, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v13, v10, v9}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_9
    iget-object v14, v7, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v5}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v15

    invoke-virtual {v14, v9, v13, v15, v4}, Lio/milton/http/HandlerHelper;->checkStorageOnAdd(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    move-result-object v13

    :goto_0
    if-eqz v13, :cond_a

    invoke-direct {v7, v9, v10, v13}, Lio/milton/http/http11/PutHandler;->respondInsufficientStorage(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/quota/StorageChecker$StorageErrorReason;)V

    return-void

    :cond_a
    if-eqz v11, :cond_b

    instance-of v13, v11, Lio/milton/resource/ReplaceableResource;

    if-eqz v13, :cond_b

    check-cast v11, Lio/milton/resource/ReplaceableResource;

    move-object v12, v11

    :cond_b
    if-eqz v12, :cond_d

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replacing content in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {v8, v9, v10, v12}, Lio/milton/http/HttpManager;->onProcessResourceStart(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    invoke-direct {v7, v8, v9, v10, v12}, Lio/milton/http/http11/PutHandler;->processReplace(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/ReplaceableResource;)V

    invoke-virtual/range {p1 .. p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object v0

    new-instance v3, Lio/milton/event/PutEvent;

    invoke-direct {v3, v12}, Lio/milton/event/PutEvent;-><init>(Lio/milton/resource/Resource;)V

    invoke-interface {v0, v3}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v1

    :goto_1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    throw v0

    :cond_d
    invoke-virtual {v5}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v5

    invoke-direct {v7, v8, v4, v5, v9}, Lio/milton/http/http11/PutHandler;->findOrCreateFolders(Lio/milton/http/HttpManager;Ljava/lang/String;Lio/milton/common/Path;Lio/milton/http/Request;)Lio/milton/resource/CollectionResource;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    :try_start_1
    instance-of v4, v12, Lio/milton/resource/PutableResource;

    if-eqz v4, :cond_f

    iget-object v0, v7, Lio/milton/http/http11/PutHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v0, v9, v12}, Lio/milton/http/HandlerHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {v7, v9, v10, v12}, Lio/milton/http/http11/PutHandler;->respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_e
    :try_start_2
    move-object v5, v12

    check-cast v5, Lio/milton/resource/PutableResource;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lio/milton/http/http11/PutHandler;->processCreate(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/PutableResource;Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v12}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v11, "method not implemented: PUT on class: "

    aput-object v11, v0, v3

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    invoke-static {v6, v0}, Lio/milton/common/LogUtils;->debug(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lio/milton/http/HttpManager;->getResponseHandler()Lio/milton/http/http11/Http11ResponseHandler;

    move-result-object v0

    invoke-interface {v0, v12, v10, v9}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v13

    goto/16 :goto_1

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v5, v1, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    throw v0

    :cond_10
    iget-object v0, v7, Lio/milton/http/http11/PutHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v10, v9}, Lio/milton/http/http11/Http11ResponseHandler;->respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V

    :goto_4
    return-void
.end method
