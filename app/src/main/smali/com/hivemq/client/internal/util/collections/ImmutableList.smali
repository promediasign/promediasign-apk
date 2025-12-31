.class public interface abstract Lcom/hivemq/client/internal/util/collections/ImmutableList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;,
        Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# virtual methods
.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract listIterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract trim()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end method
