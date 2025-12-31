.class public interface abstract Lio/milton/http/Handler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getMethods()[Ljava/lang/String;
.end method

.method public abstract isCompatible(Lio/milton/resource/Resource;)Z
.end method

.method public abstract process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
.end method
