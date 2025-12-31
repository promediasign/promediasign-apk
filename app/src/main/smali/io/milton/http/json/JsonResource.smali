.class public abstract Lio/milton/http/json/JsonResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/DigestResource;


# static fields
.field public static CONTENT_TYPE:Ljava/lang/String;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final maxAgeSecs:Ljava/lang/Long;

.field private final name:Ljava/lang/String;

.field private final wrappedResource:Lio/milton/resource/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/json/JsonResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/json/JsonResource;->log:Lorg/slf4j/Logger;

    const-string v0, "application/json; charset=utf-8"

    sput-object v0, Lio/milton/http/json/JsonResource;->CONTENT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/Resource;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/json/JsonResource;->wrappedResource:Lio/milton/resource/Resource;

    iput-object p2, p0, Lio/milton/http/json/JsonResource;->name:Ljava/lang/String;

    iput-object p3, p0, Lio/milton/http/json/JsonResource;->maxAgeSecs:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public abstract applicableMethod()Lio/milton/http/Request$Method;
.end method

.method public authenticate(Lio/milton/http/http11/auth/DigestResponse;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/milton/http/json/JsonResource;->wrappedResource:Lio/milton/resource/Resource;

    instance-of v1, v0, Lio/milton/resource/DigestResource;

    if-eqz v1, :cond_0

    check-cast v0, Lio/milton/resource/DigestResource;

    invoke-interface {v0, p1}, Lio/milton/resource/DigestResource;->authenticate(Lio/milton/http/http11/auth/DigestResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 2
    sget-object v0, Lio/milton/http/json/JsonResource;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authenticate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lio/milton/http/json/JsonResource;->wrappedResource:Lio/milton/resource/Resource;

    invoke-interface {v1, p1, p2}, Lio/milton/resource/Resource;->authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "authentication failed on wrapped resource of type: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/json/JsonResource;->wrappedResource:Lio/milton/resource/Resource;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z
    .locals 1

    iget-object p2, p0, Lio/milton/http/json/JsonResource;->wrappedResource:Lio/milton/resource/Resource;

    invoke-virtual {p0}, Lio/milton/http/json/JsonResource;->applicableMethod()Lio/milton/http/Request$Method;

    move-result-object v0

    invoke-interface {p2, p1, v0, p3}, Lio/milton/resource/Resource;->authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result p1

    sget-object p2, Lio/milton/http/json/JsonResource;->log:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "authorise failed on wrapped resource of type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/json/JsonResource;->wrappedResource:Lio/milton/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p3, "all ok"

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public checkRedirect(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentLength()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p1, Lio/milton/http/json/JsonResource;->CONTENT_TYPE:Ljava/lang/String;

    return-object p1
.end method

.method public getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;
    .locals 0

    iget-object p1, p0, Lio/milton/http/json/JsonResource;->maxAgeSecs:Ljava/lang/Long;

    return-object p1
.end method

.method public getModifiedDate()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/json/JsonResource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/json/JsonResource;->wrappedResource:Lio/milton/resource/Resource;

    invoke-interface {v0}, Lio/milton/resource/Resource;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDigestAllowed()Z
    .locals 1

    iget-object v0, p0, Lio/milton/http/json/JsonResource;->wrappedResource:Lio/milton/resource/Resource;

    instance-of v0, v0, Lio/milton/resource/DigestResource;

    return v0
.end method
