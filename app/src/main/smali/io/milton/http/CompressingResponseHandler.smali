.class public Lio/milton/http/CompressingResponseHandler;
.super Lio/milton/http/AbstractWrappingResponseHandler;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

.field private maxMemorySize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/CompressingResponseHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/CompressingResponseHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/webdav/WebDavResponseHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/milton/http/AbstractWrappingResponseHandler;-><init>(Lio/milton/http/webdav/WebDavResponseHandler;)V

    const p1, 0x186a0

    iput p1, p0, Lio/milton/http/CompressingResponseHandler;->maxMemorySize:I

    new-instance p1, Lio/milton/http/http11/DefaultCacheControlHelper;

    invoke-direct {p1}, Lio/milton/http/http11/DefaultCacheControlHelper;-><init>()V

    iput-object p1, p0, Lio/milton/http/CompressingResponseHandler;->cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

    return-void
.end method

.method private canCompress(Lio/milton/resource/GetableResource;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object p1, Lio/milton/http/CompressingResponseHandler;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canCompress: contentType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " acceptable-encodings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v1, "text"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "css"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "js"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "javascript"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gzip"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "supports gzip: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_2
    return v0
.end method


# virtual methods
.method public respondContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            "Lio/milton/http/Response;",
            "Lio/milton/http/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lio/milton/resource/GetableResource;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/milton/resource/GetableResource;

    invoke-interface {p3}, Lio/milton/http/Request;->getAcceptHeader()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/milton/resource/GetableResource;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lio/milton/http/Request;->getAcceptEncodingHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/milton/http/CompressingResponseHandler;->canCompress(Lio/milton/resource/GetableResource;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lio/milton/http/CompressingResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v3, "respondContent: compressable"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance v3, Lio/milton/common/BufferingOutputStream;

    iget v4, p0, Lio/milton/http/CompressingResponseHandler;->maxMemorySize:I

    invoke-direct {v3, v4}, Lio/milton/common/BufferingOutputStream;-><init>(I)V

    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5, p4, v1}, Lio/milton/resource/GetableResource;->sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Lio/milton/common/BufferingOutputStream;->flush()V
    :try_end_0
    .catch Lio/milton/http/exceptions/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lio/milton/common/FileUtils;->close(Ljava/io/Closeable;)V

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v4, "respondContent-compressed: "

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, p4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    sget-object p4, Lio/milton/http/Response$Status;->SC_OK:Lio/milton/http/Response$Status;

    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v2

    invoke-virtual {p0, p2, p1, p4, v2}, Lio/milton/http/CompressingResponseHandler;->setRespondContentCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V

    sget-object p1, Lio/milton/http/Response$ContentEncoding;->GZIP:Lio/milton/http/Response$ContentEncoding;

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setContentEncodingHeader(Lio/milton/http/Response$ContentEncoding;)V

    const-string p1, "Accept-Encoding"

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setVaryHeader(Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/milton/common/BufferingOutputStream;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setContentLengthHeader(Ljava/lang/Long;)V

    invoke-interface {p2, v1}, Lio/milton/http/Response;->setContentTypeHeader(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/CompressingResponseHandler;->cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3}, Lio/milton/http/http11/CacheControlHelper;->setCacheControl(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Auth;)V

    new-instance p1, Lio/milton/http/entity/InputStreamEntity;

    invoke-virtual {v3}, Lio/milton/common/BufferingOutputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p1, p3}, Lio/milton/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setEntity(Lio/milton/http/Response$Entity;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lio/milton/common/BufferingOutputStream;->deleteTempFileIfExists()V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    invoke-virtual {v3}, Lio/milton/common/BufferingOutputStream;->deleteTempFileIfExists()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v3}, Lio/milton/common/FileUtils;->close(Ljava/io/Closeable;)V

    throw p1

    :cond_0
    sget-object v0, Lio/milton/http/CompressingResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "respondContent: not compressable"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;)V

    :goto_3
    return-void

    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cant generate content for non-Getable resource: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setRespondContentCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v0}, Lio/milton/http/Response;->setDateHeader(Ljava/util/Date;)V

    invoke-interface {p1}, Lio/milton/http/Response;->getStatus()Lio/milton/http/Response$Status;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/milton/http/Response;->getStatus()Lio/milton/http/Response$Status;

    move-result-object v0

    iget v0, v0, Lio/milton/http/Response$Status;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-interface {p1, p3}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    iget-object p3, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p3, p2}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Lio/milton/http/Response;->setEtag(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p2, p4}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setModifiedDate(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Auth;)V

    :cond_2
    return-void
.end method
