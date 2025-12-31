.class public interface abstract Lio/milton/resource/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z
.end method

.method public abstract checkRedirect(Lio/milton/http/Request;)Ljava/lang/String;
.end method

.method public abstract getModifiedDate()Ljava/util/Date;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract getUniqueId()Ljava/lang/String;
.end method
