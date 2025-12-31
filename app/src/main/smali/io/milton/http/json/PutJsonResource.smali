.class public Lio/milton/http/json/PutJsonResource;
.super Lio/milton/http/json/JsonResource;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/PostableResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/json/PutJsonResource$NewFile;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private final eventManager:Lio/milton/event/EventManager;

.field private final href:Ljava/lang/String;

.field private newFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/json/PutJsonResource$NewFile;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Lio/milton/resource/PutableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/json/PutJsonResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/json/PutJsonResource;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/PutableResource;Ljava/lang/String;Lio/milton/event/EventManager;)V
    .locals 2

    sget-object v0, Lio/milton/http/Request$Method;->PUT:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/milton/http/json/JsonResource;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object p3, p0, Lio/milton/http/json/PutJsonResource;->eventManager:Lio/milton/event/EventManager;

    iput-object p1, p0, Lio/milton/http/json/PutJsonResource;->wrapped:Lio/milton/resource/PutableResource;

    iput-object p2, p0, Lio/milton/http/json/PutJsonResource;->href:Ljava/lang/String;

    return-void
.end method

.method private buildNewHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "_DAV"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "/"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private processFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/String;Lio/milton/http/json/PutJsonResource$NewFile;)V
    .locals 4

    const-string v0, "completed POST processing for file. Created: "

    const-string v1, "completed POST processing for file. Deleted, then created: "

    const-string v2, "completed POST processing for file. Updated: "

    :try_start_0
    iget-object v3, p0, Lio/milton/http/json/PutJsonResource;->wrapped:Lio/milton/resource/PutableResource;

    invoke-interface {v3, p1}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v0, v3, Lio/milton/resource/ReplaceableResource;

    if-eqz v0, :cond_0

    sget-object p1, Lio/milton/http/json/PutJsonResource;->log:Lorg/slf4j/Logger;

    const-string p3, "existing resource is replaceable, so replace content"

    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    move-object p3, v3

    check-cast p3, Lio/milton/resource/ReplaceableResource;

    const/4 p4, 0x0

    invoke-interface {p3, p2, p4}, Lio/milton/resource/ReplaceableResource;->replaceContent(Ljava/io/InputStream;Ljava/lang/Long;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/json/PutJsonResource;->eventManager:Lio/milton/event/EventManager;

    new-instance p2, Lio/milton/event/PutEvent;

    invoke-direct {p2, p3}, Lio/milton/event/PutEvent;-><init>(Lio/milton/resource/Resource;)V

    :goto_0
    invoke-interface {p1, p2}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    sget-object v0, Lio/milton/http/json/PutJsonResource;->log:Lorg/slf4j/Logger;

    const-string v2, "existing resource is not replaceable, will be deleted"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    instance-of v2, v3, Lio/milton/resource/DeletableResource;

    if-eqz v2, :cond_1

    check-cast v3, Lio/milton/resource/DeletableResource;

    invoke-interface {v3}, Lio/milton/resource/DeletableResource;->delete()V

    iget-object v2, p0, Lio/milton/http/json/PutJsonResource;->wrapped:Lio/milton/resource/PutableResource;

    invoke-interface {v2, p1, p2, p3, p4}, Lio/milton/resource/PutableResource;->createNew(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/json/PutJsonResource;->eventManager:Lio/milton/event/EventManager;

    new-instance p2, Lio/milton/event/PutEvent;

    invoke-direct {p2, p3}, Lio/milton/event/PutEvent;-><init>(Lio/milton/resource/Resource;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    const-string p2, "existing resource could not be deleted, is not deletable"

    invoke-direct {p1, v3, p2}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lio/milton/http/json/PutJsonResource;->wrapped:Lio/milton/resource/PutableResource;

    invoke-interface {v1, p1, p2, p3, p4}, Lio/milton/resource/PutableResource;->createNew(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p3

    sget-object p1, Lio/milton/http/json/PutJsonResource;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/json/PutJsonResource;->eventManager:Lio/milton/event/EventManager;

    new-instance p2, Lio/milton/event/PutEvent;

    invoke-direct {p2, p3}, Lio/milton/event/PutEvent;-><init>(Lio/milton/resource/Resource;)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lio/milton/http/json/PutJsonResource;->href:Ljava/lang/String;

    invoke-interface {p3}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/milton/http/json/PutJsonResource;->buildNewHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lio/milton/http/json/PutJsonResource$NewFile;->setHref(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    throw p1

    :goto_3
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Exception creating resource"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private toArray(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public applicableMethod()Lio/milton/http/Request$Method;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->PUT:Lio/milton/http/Request$Method;

    return-object v0
.end method

.method public getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "text/plain"

    return-object p1
.end method

.method public processForm(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/FileItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "content"

    sget-object v1, Lio/milton/http/json/PutJsonResource;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processForm: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/milton/http/json/PutJsonResource;->wrapped:Lio/milton/resource/PutableResource;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/milton/http/json/PutJsonResource;->newFiles:Ljava/util/List;

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "Content-Type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/milton/http/json/PutJsonResource;->toArray(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    int-to-long v3, p1

    new-instance v9, Lio/milton/http/json/PutJsonResource$NewFile;

    invoke-direct {v9, p0}, Lio/milton/http/json/PutJsonResource$NewFile;-><init>(Lio/milton/http/json/PutJsonResource;)V

    invoke-virtual {v9, v5}, Lio/milton/http/json/PutJsonResource$NewFile;->setOriginalName(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lio/milton/http/json/PutJsonResource$NewFile;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Lio/milton/http/json/PutJsonResource$NewFile;->setLength(J)V

    iget-object p1, p0, Lio/milton/http/json/PutJsonResource;->newFiles:Ljava/util/List;

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lio/milton/http/json/PutJsonResource;->processFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/String;Lio/milton/http/json/PutJsonResource$NewFile;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "completed all POST processing"

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_5

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    new-instance p1, Lio/milton/http/json/PutJsonResource$NewFile;

    invoke-direct {p1, p0}, Lio/milton/http/json/PutJsonResource$NewFile;-><init>(Lio/milton/http/json/PutJsonResource;)V

    invoke-static {}, Lio/milton/http/HttpManager;->request()Lio/milton/http/Request;

    move-result-object p1

    invoke-interface {p1}, Lio/milton/http/Request;->getUserAgentHeader()Ljava/lang/String;
    :try_end_0
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :goto_1
    sget-object p2, Lio/milton/http/json/PutJsonResource;->log:Lorg/slf4j/Logger;

    const-string v0, "ConflictException"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Conflict: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/http/exceptions/ConflictException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/milton/http/json/PutJsonResource;->errorMessage:Ljava/lang/String;

    goto :goto_5

    :goto_3
    sget-object p2, Lio/milton/http/json/PutJsonResource;->log:Lorg/slf4j/Logger;

    const-string v0, "NotAuthorizedException"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not authorised: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_4
    sget-object p2, Lio/milton/http/json/PutJsonResource;->log:Lorg/slf4j/Logger;

    const-string v0, "BadRequestException"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bad Request: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/http/exceptions/BadRequestException;->getReason()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_5
    return-object v2
.end method

.method public sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lio/milton/http/Range;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance p2, Lnet/sf/json/JsonConfig;

    invoke-direct {p2}, Lnet/sf/json/JsonConfig;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lnet/sf/json/JsonConfig;->setIgnoreTransientFields(Z)V

    sget-object p3, Lnet/sf/json/util/CycleDetectionStrategy;->LENIENT:Lnet/sf/json/util/CycleDetectionStrategy;

    invoke-virtual {p2, p3}, Lnet/sf/json/JsonConfig;->setCycleDetectionStrategy(Lnet/sf/json/util/CycleDetectionStrategy;)V

    new-instance p3, Ljava/io/PrintWriter;

    invoke-direct {p3, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lio/milton/http/json/PutJsonResource;->errorMessage:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p4, "error"

    iget-object v0, p0, Lio/milton/http/json/PutJsonResource;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p1, p2}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object p1

    invoke-interface {p1, p3}, Lnet/sf/json/JSON;->write(Ljava/io/Writer;)Ljava/io/Writer;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lio/milton/http/json/PutJsonResource;->newFiles:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lio/milton/http/json/PutJsonResource$NewFile;

    iget-object p4, p0, Lio/milton/http/json/PutJsonResource;->newFiles:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Lio/milton/http/json/PutJsonResource$NewFile;

    goto :goto_0

    :goto_1
    invoke-virtual {p3}, Ljava/io/Writer;->flush()V

    return-void
.end method
