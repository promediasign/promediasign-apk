.class public Lio/milton/http/entity/BufferingGetableResourceEntity;
.super Lio/milton/http/entity/GetableResourceEntity;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final contentLength:Ljava/lang/Long;

.field private final maxMemorySize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/entity/BufferingGetableResourceEntity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/entity/BufferingGetableResourceEntity;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/GetableResource;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;I)V
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
            "Ljava/lang/Long;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/milton/http/entity/GetableResourceEntity;-><init>(Lio/milton/resource/GetableResource;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    iput-object p4, p0, Lio/milton/http/entity/BufferingGetableResourceEntity;->contentLength:Ljava/lang/Long;

    iput p5, p0, Lio/milton/http/entity/BufferingGetableResourceEntity;->maxMemorySize:I

    return-void
.end method


# virtual methods
.method public write(Lio/milton/http/Response;Ljava/io/OutputStream;)V
    .locals 6

    sget-object v0, Lio/milton/http/entity/BufferingGetableResourceEntity;->log:Lorg/slf4j/Logger;

    const-string v1, "buffering content..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance v1, Lio/milton/common/BufferingOutputStream;

    iget v2, p0, Lio/milton/http/entity/BufferingGetableResourceEntity;->maxMemorySize:I

    invoke-direct {v1, v2}, Lio/milton/common/BufferingOutputStream;-><init>(I)V

    :try_start_0
    invoke-virtual {p0}, Lio/milton/http/entity/GetableResourceEntity;->getResource()Lio/milton/resource/GetableResource;

    move-result-object v2

    invoke-virtual {p0}, Lio/milton/http/entity/GetableResourceEntity;->getRange()Lio/milton/http/Range;

    move-result-object v3

    invoke-virtual {p0}, Lio/milton/http/entity/GetableResourceEntity;->getParams()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lio/milton/http/entity/GetableResourceEntity;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v3, v4, v5}, Lio/milton/resource/GetableResource;->sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/milton/common/BufferingOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v1}, Lio/milton/common/BufferingOutputStream;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lio/milton/http/entity/BufferingGetableResourceEntity;->contentLength:Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Content Length specified by resource: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/entity/BufferingGetableResourceEntity;->contentLength:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not equal to the size of content when generated: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " This error can be suppressed by setting the buffering property to whenNeeded or never"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p1, v2}, Lio/milton/http/Response;->setContentLengthHeader(Ljava/lang/Long;)V

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "sending buffered content... "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/milton/common/BufferingOutputStream;->getSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes contentLength="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/milton/http/entity/BufferingGetableResourceEntity;->contentLength:Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lio/milton/common/BufferingOutputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_1
    invoke-static {p1, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Lio/milton/common/ReadingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lio/milton/common/WritingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_2
    sget-object v0, Lio/milton/http/entity/BufferingGetableResourceEntity;->log:Lorg/slf4j/Logger;

    const-string v1, "exception writing, client probably closed connection"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_2
    return-void

    :catch_1
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p2

    :catch_2
    move-exception p1

    invoke-virtual {v1}, Lio/milton/common/BufferingOutputStream;->deleteTempFileIfExists()V

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Exception generating buffered content"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
