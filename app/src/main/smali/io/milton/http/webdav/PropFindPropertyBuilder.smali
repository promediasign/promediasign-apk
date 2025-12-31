.class public interface abstract Lio/milton/http/webdav/PropFindPropertyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract buildProperties(Lio/milton/resource/PropFindableResource;ILio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/PropFindableResource;",
            "I",
            "Lio/milton/http/webdav/PropertiesRequest;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findAllProps(Lio/milton/resource/PropFindableResource;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/PropFindableResource;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end method
