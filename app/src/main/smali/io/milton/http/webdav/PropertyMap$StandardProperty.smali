.class public interface abstract Lio/milton/http/webdav/PropertyMap$StandardProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/PropertyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StandardProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract fieldName()Ljava/lang/String;
.end method

.method public abstract getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/PropFindableResource;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getValueClass()Ljava/lang/Class;
.end method
