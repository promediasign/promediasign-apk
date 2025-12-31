.class public Lio/milton/http/json/PropPatchJsonResource;
.super Lio/milton/http/json/JsonResource;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/PostableResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/json/PropPatchJsonResource$FieldError;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final encodedUrl:Ljava/lang/String;

.field private final patchHandler:Lio/milton/http/json/JsonPropPatchHandler;

.field private resp:Lio/milton/http/webdav/PropFindResponse;

.field private final wrappedResource:Lio/milton/resource/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/json/PropPatchJsonResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/json/PropPatchJsonResource;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/Resource;Lio/milton/http/json/JsonPropPatchHandler;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lio/milton/http/Request$Method;->PROPPATCH:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/milton/http/json/JsonResource;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object p1, p0, Lio/milton/http/json/PropPatchJsonResource;->wrappedResource:Lio/milton/resource/Resource;

    iput-object p3, p0, Lio/milton/http/json/PropPatchJsonResource;->encodedUrl:Ljava/lang/String;

    iput-object p2, p0, Lio/milton/http/json/PropPatchJsonResource;->patchHandler:Lio/milton/http/json/JsonPropPatchHandler;

    return-void
.end method


# virtual methods
.method public applicableMethod()Lio/milton/http/Request$Method;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->PROPPATCH:Lio/milton/http/Request$Method;

    return-object v0
.end method

.method public authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public processForm(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
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

    iget-object p2, p0, Lio/milton/http/json/PropPatchJsonResource;->patchHandler:Lio/milton/http/json/JsonPropPatchHandler;

    iget-object v0, p0, Lio/milton/http/json/PropPatchJsonResource;->wrappedResource:Lio/milton/resource/Resource;

    iget-object v1, p0, Lio/milton/http/json/PropPatchJsonResource;->encodedUrl:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lio/milton/http/json/JsonPropPatchHandler;->process(Lio/milton/resource/Resource;Ljava/lang/String;Ljava/util/Map;)Lio/milton/http/webdav/PropFindResponse;

    move-result-object p1

    iput-object p1, p0, Lio/milton/http/json/PropPatchJsonResource;->resp:Lio/milton/http/webdav/PropFindResponse;

    const/4 p1, 0x0

    return-object p1
.end method

.method public sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
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

    sget-object p2, Lio/milton/http/json/PropPatchJsonResource;->log:Lorg/slf4j/Logger;

    const-string p3, "sendContent"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance p3, Lnet/sf/json/JsonConfig;

    invoke-direct {p3}, Lnet/sf/json/JsonConfig;-><init>()V

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lnet/sf/json/JsonConfig;->setIgnoreTransientFields(Z)V

    sget-object p4, Lnet/sf/json/util/CycleDetectionStrategy;->LENIENT:Lnet/sf/json/util/CycleDetectionStrategy;

    invoke-virtual {p3, p4}, Lnet/sf/json/JsonConfig;->setCycleDetectionStrategy(Lnet/sf/json/util/CycleDetectionStrategy;)V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lio/milton/http/json/PropPatchJsonResource;->resp:Lio/milton/http/webdav/PropFindResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error props: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/json/PropPatchJsonResource;->resp:Lio/milton/http/webdav/PropFindResponse;

    invoke-virtual {v1}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p2, p0, Lio/milton/http/json/PropPatchJsonResource;->resp:Lio/milton/http/webdav/PropFindResponse;

    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/http/Response$Status;

    iget-object v1, p0, Lio/milton/http/json/PropPatchJsonResource;->resp:Lio/milton/http/webdav/PropFindResponse;

    invoke-virtual {v1}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/webdav/PropFindResponse$NameAndError;

    new-instance v3, Lio/milton/http/json/PropPatchJsonResource$FieldError;

    invoke-virtual {v2}, Lio/milton/http/webdav/PropFindResponse$NameAndError;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lio/milton/http/webdav/PropFindResponse$NameAndError;->getError()Ljava/lang/String;

    move-result-object v2

    iget v5, v0, Lio/milton/http/Response$Status;->code:I

    invoke-direct {v3, p0, v4, v2, v5}, Lio/milton/http/json/PropPatchJsonResource$FieldError;-><init>(Lio/milton/http/json/PropPatchJsonResource;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p2, Lio/milton/http/json/PropPatchJsonResource;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errors size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lio/milton/http/json/PropPatchJsonResource$FieldError;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lio/milton/http/json/PropPatchJsonResource$FieldError;

    new-instance p4, Ljava/io/PrintWriter;

    invoke-direct {p4, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p2, p3}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object p1

    invoke-interface {p1, p4}, Lnet/sf/json/JSON;->write(Ljava/io/Writer;)Ljava/io/Writer;

    invoke-virtual {p4}, Ljava/io/Writer;->flush()V

    return-void
.end method
