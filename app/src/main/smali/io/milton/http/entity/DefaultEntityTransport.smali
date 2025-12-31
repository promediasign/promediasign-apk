.class public Lio/milton/http/entity/DefaultEntityTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/entity/EntityTransport;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/entity/DefaultEntityTransport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/entity/DefaultEntityTransport;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/webdav/UserAgentHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/entity/DefaultEntityTransport;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    return-void
.end method


# virtual methods
.method public closeResponse(Lio/milton/http/Response;)V
    .locals 0

    invoke-interface {p1}, Lio/milton/http/Response;->close()V

    return-void
.end method

.method public sendResponseEntity(Lio/milton/http/Response;)V
    .locals 2

    invoke-interface {p1}, Lio/milton/http/Response;->getEntity()Lio/milton/http/Response$Entity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/milton/http/Response;->getEntity()Lio/milton/http/Response$Entity;

    move-result-object v0

    invoke-interface {p1}, Lio/milton/http/Response;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/milton/http/Response$Entity;->write(Lio/milton/http/Response;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lio/milton/http/entity/DefaultEntityTransport;->log:Lorg/slf4j/Logger;

    const-string v0, "No response entity to send!"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
