.class public Lio/milton/http/http11/auth/LoginResponseHandler$ContentTypeLoginPageTypeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/http11/auth/LoginResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentTypeLoginPageTypeHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canLogin(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 2

    instance-of v0, p1, Lio/milton/resource/GetableResource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lio/milton/http/Request;->getAcceptHeader()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lio/milton/resource/GetableResource;

    const-string v0, "text/html"

    invoke-interface {p1, v0}, Lio/milton/resource/GetableResource;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "html"

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {}, Lio/milton/http/http11/auth/LoginResponseHandler;->access$000()Lorg/slf4j/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isPage: resource has no content type, depends on requested content type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return p1

    :cond_0
    invoke-static {}, Lio/milton/http/http11/auth/LoginResponseHandler;->access$000()Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "isPage: resource has no content type, and no requeted content type, so assume false"

    :goto_1
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {}, Lio/milton/http/http11/auth/LoginResponseHandler;->access$000()Lorg/slf4j/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isPage: resource has content type. is html? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lio/milton/http/http11/auth/LoginResponseHandler;->access$000()Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "isPage: resource is not getable"

    goto :goto_1
.end method

.method public isAjax(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 0

    invoke-interface {p2}, Lio/milton/http/Request;->getAcceptHeader()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "application/json"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "text/javascript"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
