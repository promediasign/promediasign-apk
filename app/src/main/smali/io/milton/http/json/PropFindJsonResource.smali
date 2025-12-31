.class public Lio/milton/http/json/PropFindJsonResource;
.super Lio/milton/http/json/JsonResource;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/GetableResource;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final encodedUrl:Ljava/lang/String;

.field private final jsonPropFindHandler:Lio/milton/http/json/JsonPropFindHandler;

.field private final wrappedResource:Lio/milton/resource/PropFindableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/json/PropFindJsonResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/json/PropFindJsonResource;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/PropFindableResource;Lio/milton/http/json/JsonPropFindHandler;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->PROPFIND:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p4}, Lio/milton/http/json/JsonResource;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object p1, p0, Lio/milton/http/json/PropFindJsonResource;->wrappedResource:Lio/milton/resource/PropFindableResource;

    iput-object p3, p0, Lio/milton/http/json/PropFindJsonResource;->encodedUrl:Ljava/lang/String;

    iput-object p2, p0, Lio/milton/http/json/PropFindJsonResource;->jsonPropFindHandler:Lio/milton/http/json/JsonPropFindHandler;

    return-void
.end method


# virtual methods
.method public applicableMethod()Lio/milton/http/Request$Method;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->PROPFIND:Lio/milton/http/Request$Method;

    return-object v0
.end method

.method public getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;
    .locals 3

    invoke-static {}, Lio/milton/http/HttpManager;->request()Lio/milton/http/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "maxAgeSecs"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    sget-object v1, Lio/milton/http/json/PropFindJsonResource;->log:Lorg/slf4j/Logger;

    const-string v2, "using max age from parameter"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object v1, Lio/milton/http/json/PropFindJsonResource;->log:Lorg/slf4j/Logger;

    const-string v2, "Couldnt parse max age parameter: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lio/milton/http/json/JsonResource;->getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
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

    iget-object v0, p0, Lio/milton/http/json/PropFindJsonResource;->jsonPropFindHandler:Lio/milton/http/json/JsonPropFindHandler;

    iget-object v1, p0, Lio/milton/http/json/PropFindJsonResource;->wrappedResource:Lio/milton/resource/PropFindableResource;

    iget-object v2, p0, Lio/milton/http/json/PropFindJsonResource;->encodedUrl:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lio/milton/http/json/JsonPropFindHandler;->sendContent(Lio/milton/resource/PropFindableResource;Ljava/lang/String;Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
