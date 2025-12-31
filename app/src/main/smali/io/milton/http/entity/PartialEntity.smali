.class public Lio/milton/http/entity/PartialEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Response$Entity;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final multipartBoundary:Ljava/lang/String;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/Range;",
            ">;"
        }
    .end annotation
.end field

.field private final resource:Lio/milton/resource/GetableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/entity/PartialEntity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/entity/PartialEntity;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/GetableResource;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/GetableResource;",
            "Ljava/util/List<",
            "Lio/milton/http/Range;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/entity/PartialEntity;->resource:Lio/milton/resource/GetableResource;

    iput-object p2, p0, Lio/milton/http/entity/PartialEntity;->ranges:Ljava/util/List;

    iput-object p3, p0, Lio/milton/http/entity/PartialEntity;->params:Ljava/util/Map;

    iput-object p4, p0, Lio/milton/http/entity/PartialEntity;->contentType:Ljava/lang/String;

    iput-object p5, p0, Lio/milton/http/entity/PartialEntity;->multipartBoundary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public write(Lio/milton/http/Response;Ljava/io/OutputStream;)V
    .locals 10

    iget-object v0, p0, Lio/milton/http/entity/PartialEntity;->resource:Lio/milton/resource/GetableResource;

    invoke-interface {v0}, Lio/milton/resource/GetableResource;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/milton/http/entity/PartialEntity;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldnt calculate range end position because the resource is not reporting a content length, and no end position was requested by the client: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/entity/PartialEntity;->resource:Lio/milton/resource/GetableResource;

    invoke-interface {v2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/milton/http/entity/PartialEntity;->resource:Lio/milton/resource/GetableResource;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    :try_start_0
    new-instance v8, Lio/milton/common/BufferingOutputStream;

    const v1, 0x186a0

    invoke-direct {v8, v1}, Lio/milton/common/BufferingOutputStream;-><init>(I)V

    new-instance v9, Lio/milton/http/http11/MultipleRangeWritingOutputStream;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lio/milton/http/entity/PartialEntity;->ranges:Ljava/util/List;

    iget-object v6, p0, Lio/milton/http/entity/PartialEntity;->multipartBoundary:Ljava/lang/String;

    iget-object v7, p0, Lio/milton/http/entity/PartialEntity;->contentType:Ljava/lang/String;

    move-object v1, v9

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lio/milton/http/http11/MultipleRangeWritingOutputStream;-><init>(JLjava/io/OutputStream;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/entity/PartialEntity;->resource:Lio/milton/resource/GetableResource;

    iget-object v1, p0, Lio/milton/http/entity/PartialEntity;->params:Ljava/util/Map;

    iget-object v2, p0, Lio/milton/http/entity/PartialEntity;->contentType:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v9, v3, v1, v2}, Lio/milton/resource/GetableResource;->sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/milton/common/BufferingOutputStream;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/milton/http/Response;->setContentLengthHeader(Ljava/lang/Long;)V

    invoke-virtual {v8}, Lio/milton/common/BufferingOutputStream;->close()V

    invoke-virtual {v8}, Lio/milton/common/BufferingOutputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lio/milton/http/entity/PartialEntity;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException writing response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method
