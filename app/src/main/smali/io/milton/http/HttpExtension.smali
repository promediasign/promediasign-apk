.class public interface abstract Lio/milton/http/HttpExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCustomPostHandlers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHandlers()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/milton/http/Handler;",
            ">;"
        }
    .end annotation
.end method
