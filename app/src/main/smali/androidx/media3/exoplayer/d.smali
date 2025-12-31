.class public final synthetic Landroidx/media3/exoplayer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-direct {v0}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>()V

    return-object v0
.end method
