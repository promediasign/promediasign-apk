.class public interface abstract Lio/milton/http/webdav/ResourceTypeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getResourceTypes(Lio/milton/resource/Resource;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            ")",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedLevels(Lio/milton/resource/Resource;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
