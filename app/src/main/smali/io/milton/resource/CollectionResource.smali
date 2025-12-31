.class public interface abstract Lio/milton/resource/CollectionResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/Resource;


# virtual methods
.method public abstract child(Ljava/lang/String;)Lio/milton/resource/Resource;
.end method

.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/milton/resource/Resource;",
            ">;"
        }
    .end annotation
.end method
