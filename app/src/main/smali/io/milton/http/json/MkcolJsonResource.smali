.class public Lio/milton/http/json/MkcolJsonResource;
.super Lio/milton/http/json/JsonResource;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/PostableResource;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final eventManager:Lio/milton/event/EventManager;

.field private final href:Ljava/lang/String;

.field private final wrapped:Lio/milton/resource/MakeCollectionableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/json/MkcolJsonResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/json/MkcolJsonResource;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/MakeCollectionableResource;Ljava/lang/String;Lio/milton/event/EventManager;)V
    .locals 2

    sget-object v0, Lio/milton/http/Request$Method;->PUT:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/milton/http/json/JsonResource;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object p3, p0, Lio/milton/http/json/MkcolJsonResource;->eventManager:Lio/milton/event/EventManager;

    iput-object p1, p0, Lio/milton/http/json/MkcolJsonResource;->wrapped:Lio/milton/resource/MakeCollectionableResource;

    iput-object p2, p0, Lio/milton/http/json/MkcolJsonResource;->href:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applicableMethod()Lio/milton/http/Request$Method;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->MKCOL:Lio/milton/http/Request$Method;

    return-object v0
.end method

.method public processForm(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
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

    :try_start_0
    iget-object p2, p0, Lio/milton/http/json/MkcolJsonResource;->wrapped:Lio/milton/resource/MakeCollectionableResource;

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/milton/resource/MakeCollectionableResource;->createCollection(Ljava/lang/String;)Lio/milton/resource/CollectionResource;

    move-result-object p1

    iget-object p2, p0, Lio/milton/http/json/MkcolJsonResource;->eventManager:Lio/milton/event/EventManager;

    if-eqz p2, :cond_0

    new-instance v0, Lio/milton/event/NewFolderEvent;

    invoke-direct {v0, p1}, Lio/milton/event/NewFolderEvent;-><init>(Lio/milton/resource/CollectionResource;)V

    invoke-interface {p2, v0}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V
    :try_end_0
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    iget-object p2, p0, Lio/milton/http/json/MkcolJsonResource;->wrapped:Lio/milton/resource/MakeCollectionableResource;

    const-string v0, "A conflict occured. The folder might already exist"

    invoke-direct {p1, p2, v0}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1
.end method

.method public sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
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

    return-void
.end method
