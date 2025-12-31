.class public interface abstract Lio/milton/http/AuthenticationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract appendChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            "Lio/milton/http/Request;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Object;
.end method

.method public abstract credentialsPresent(Lio/milton/http/Request;)Z
.end method

.method public abstract isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
.end method

.method public abstract supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
.end method
