.class public Lsk/mimac/slideshow/gui/video/SimpleLoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFallbackSelectionFor(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMinimumLoadableRetryCount(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getRetryDelayMsFor(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public onLoadTaskConcluded(J)V
    .locals 0

    return-void
.end method
