.class public abstract Lio/milton/http/fck/FckCommon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/PostableResource;
.implements Lio/milton/resource/DigestResource;


# instance fields
.field protected url:Lio/milton/common/Path;

.field protected final wrappedResource:Lio/milton/resource/CollectionResource;


# direct methods
.method public constructor <init>(Lio/milton/resource/CollectionResource;Lio/milton/common/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

    iput-object p2, p0, Lio/milton/http/fck/FckCommon;->url:Lio/milton/common/Path;

    return-void
.end method


# virtual methods
.method public authenticate(Lio/milton/http/http11/auth/DigestResponse;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

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
    .locals 1

    .line 2
    iget-object v0, p0, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

    invoke-interface {v0, p1, p2}, Lio/milton/resource/Resource;->authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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

.method public getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getModifiedDate()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fck/FckCommon;->url:Lio/milton/common/Path;

    invoke-virtual {v0}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

    invoke-interface {v0}, Lio/milton/resource/Resource;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDigestAllowed()Z
    .locals 1

    iget-object v0, p0, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

    instance-of v0, v0, Lio/milton/resource/DigestResource;

    return v0
.end method
