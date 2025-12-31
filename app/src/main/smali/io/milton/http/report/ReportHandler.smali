.class public Lio/milton/http/report/ReportHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ExistingEntityHandler;


# instance fields
.field private final log:Lorg/slf4j/Logger;

.field private final reports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field private final responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/ResourceHandlerHelper;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/webdav/WebDavResponseHandler;",
            "Lio/milton/http/ResourceHandlerHelper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/milton/http/report/ReportHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/report/ReportHandler;->log:Lorg/slf4j/Logger;

    iput-object p1, p0, Lio/milton/http/report/ReportHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iput-object p2, p0, Lio/milton/http/report/ReportHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    iput-object p3, p0, Lio/milton/http/report/ReportHandler;->reports:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMethods()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->REPORT:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/report/ReportHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/milton/http/ResourceHandlerHelper;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V

    return-void
.end method

.method public processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 2

    const-string p1, "report not known: "

    :try_start_0
    new-instance p3, Lorg/jdom/input/SAXBuilder;

    invoke-direct {p3}, Lorg/jdom/input/SAXBuilder;-><init>()V

    const-string v0, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lorg/jdom/input/SAXBuilder;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {p2}, Lio/milton/http/Request;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/milton/http/report/ReportHandler;->reports:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, LA/g;->x(Ljava/lang/Object;)V

    iget-object p3, p0, Lio/milton/http/report/ReportHandler;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    invoke-direct {p1, p4}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;)V

    throw p1
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/milton/common/ReadingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/common/WritingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    const-class p2, Lio/milton/http/report/ReportHandler;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 6

    iget-object v0, p0, Lio/milton/http/report/ReportHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lio/milton/http/ResourceHandlerHelper;->processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;)V

    return-void
.end method
