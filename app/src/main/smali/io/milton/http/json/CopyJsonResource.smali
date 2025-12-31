.class public Lio/milton/http/json/CopyJsonResource;
.super Lio/milton/http/json/JsonResource;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/PostableResource;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final host:Ljava/lang/String;

.field private final resourceFactory:Lio/milton/http/ResourceFactory;

.field private final wrapped:Lio/milton/resource/CopyableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/json/CopyJsonResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/json/CopyJsonResource;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/milton/resource/CopyableResource;Lio/milton/http/ResourceFactory;)V
    .locals 2

    sget-object v0, Lio/milton/http/Request$Method;->COPY:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lio/milton/http/json/JsonResource;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object p1, p0, Lio/milton/http/json/CopyJsonResource;->host:Ljava/lang/String;

    iput-object p2, p0, Lio/milton/http/json/CopyJsonResource;->wrapped:Lio/milton/resource/CopyableResource;

    iput-object p3, p0, Lio/milton/http/json/CopyJsonResource;->resourceFactory:Lio/milton/http/ResourceFactory;

    return-void
.end method


# virtual methods
.method public applicableMethod()Lio/milton/http/Request$Method;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->COPY:Lio/milton/http/Request$Method;

    return-object v0
.end method

.method public processForm(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
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

    const-string p2, "destination"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/milton/common/Utils;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object p1

    iget-object p2, p0, Lio/milton/http/json/CopyJsonResource;->resourceFactory:Lio/milton/http/ResourceFactory;

    iget-object v0, p0, Lio/milton/http/json/CopyJsonResource;->host:Ljava/lang/String;

    invoke-virtual {p1}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v1

    invoke-virtual {v1}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p2

    if-eqz p2, :cond_2

    instance-of v0, p2, Lio/milton/resource/CollectionResource;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/milton/resource/CollectionResource;

    invoke-virtual {p1}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/milton/http/json/CopyJsonResource;->wrapped:Lio/milton/resource/CopyableResource;

    invoke-virtual {p1}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/milton/resource/CopyableResource;->copyTo(Lio/milton/resource/CollectionResource;Ljava/lang/String;)V
    :try_end_0
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception v0

    sget-object v1, Lio/milton/http/json/CopyJsonResource;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception copying to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "conflict: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/milton/http/exceptions/ConflictException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1

    :cond_0
    sget-object v0, Lio/milton/http/json/CopyJsonResource;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destination already exists: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    const-string v0, "File already exists"

    invoke-direct {p1, p2, v0}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    iget-object p2, p0, Lio/milton/http/json/CopyJsonResource;->wrapped:Lio/milton/resource/CopyableResource;

    const-string v0, "The destination parent is not a collection resource"

    invoke-direct {p1, p2, v0}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    iget-object p2, p0, Lio/milton/http/json/CopyJsonResource;->wrapped:Lio/milton/resource/CopyableResource;

    const-string v0, "The destination parent does not exist"

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
