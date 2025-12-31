.class public Lio/milton/http/entity/GetableResourceEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Response$Entity;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private contentType:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private range:Lio/milton/http/Range;

.field private resource:Lio/milton/resource/GetableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/entity/GetableResourceEntity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/entity/GetableResourceEntity;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/GetableResource;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/GetableResource;",
            "Lio/milton/http/Range;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/entity/GetableResourceEntity;->resource:Lio/milton/resource/GetableResource;

    iput-object p2, p0, Lio/milton/http/entity/GetableResourceEntity;->range:Lio/milton/http/Range;

    iput-object p3, p0, Lio/milton/http/entity/GetableResourceEntity;->params:Ljava/util/Map;

    iput-object p4, p0, Lio/milton/http/entity/GetableResourceEntity;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/GetableResource;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/GetableResource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/milton/http/entity/GetableResourceEntity;-><init>(Lio/milton/resource/GetableResource;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/entity/GetableResourceEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/entity/GetableResourceEntity;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getRange()Lio/milton/http/Range;
    .locals 1

    iget-object v0, p0, Lio/milton/http/entity/GetableResourceEntity;->range:Lio/milton/http/Range;

    return-object v0
.end method

.method public getResource()Lio/milton/resource/GetableResource;
    .locals 1

    iget-object v0, p0, Lio/milton/http/entity/GetableResourceEntity;->resource:Lio/milton/resource/GetableResource;

    return-object v0
.end method

.method public write(Lio/milton/http/Response;Ljava/io/OutputStream;)V
    .locals 7

    const-string p1, "sendContent finished in "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lio/milton/http/entity/GetableResourceEntity;->log:Lorg/slf4j/Logger;

    const-string v3, "sendContent"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lio/milton/http/entity/GetableResourceEntity;->resource:Lio/milton/resource/GetableResource;

    iget-object v4, p0, Lio/milton/http/entity/GetableResourceEntity;->range:Lio/milton/http/Range;

    iget-object v5, p0, Lio/milton/http/entity/GetableResourceEntity;->params:Ljava/util/Map;

    iget-object v6, p0, Lio/milton/http/entity/GetableResourceEntity;->contentType:Ljava/lang/String;

    invoke-interface {v3, p2, v4, v5, v6}, Lio/milton/resource/GetableResource;->sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lio/milton/http/entity/GetableResourceEntity;->log:Lorg/slf4j/Logger;

    const-string v1, "IOException writing to output, probably client terminated connection"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const-string v1, "IOException stack trace"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method
