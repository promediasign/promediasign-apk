.class public interface abstract Lio/milton/http/http11/auth/NonceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/http11/auth/NonceProvider$NonceValidity;
    }
.end annotation


# virtual methods
.method public abstract createNonce(Lio/milton/http/Request;)Ljava/lang/String;
.end method

.method public abstract getNonceValidity(Ljava/lang/String;Ljava/lang/Long;)Lio/milton/http/http11/auth/NonceProvider$NonceValidity;
.end method
