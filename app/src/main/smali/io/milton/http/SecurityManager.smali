.class public interface abstract Lio/milton/http/SecurityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract authenticate(Lio/milton/http/http11/auth/DigestResponse;)Ljava/lang/Object;
.end method

.method public abstract authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;Lio/milton/resource/Resource;)Z
.end method

.method public abstract getRealm(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isDigestAllowed()Z
.end method
