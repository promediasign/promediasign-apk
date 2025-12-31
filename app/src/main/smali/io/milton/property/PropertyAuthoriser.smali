.class public interface abstract Lio/milton/property/PropertyAuthoriser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/property/PropertyAuthoriser$CheckResult;,
        Lio/milton/property/PropertyAuthoriser$PropertyPermission;
    }
.end annotation


# virtual methods
.method public abstract checkPermissions(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/property/PropertyAuthoriser$PropertyPermission;Ljava/util/Set;Lio/milton/resource/Resource;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/Request;",
            "Lio/milton/http/Request$Method;",
            "Lio/milton/property/PropertyAuthoriser$PropertyPermission;",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Lio/milton/resource/Resource;",
            ")",
            "Ljava/util/Set<",
            "Lio/milton/property/PropertyAuthoriser$CheckResult;",
            ">;"
        }
    .end annotation
.end method
