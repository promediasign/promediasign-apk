.class final Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoSinkImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl$ScaleAndRotateAccessor;
    }
.end annotation


# instance fields
.field private final compositingVideoSinkProvider:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

.field private final context:Landroid/content/Context;

.field private finalBufferPresentationTimeUs:J

.field private hasRegisteredFirstInputStream:Z

.field private inputFormat:Landroidx/media3/common/Format;

.field private inputStreamOffsetUs:J

.field private inputType:I

.field private lastBufferPresentationTimeUs:J

.field private pendingInputStreamBufferPresentationTimeUs:J

.field private pendingInputStreamOffsetChange:Z

.field private final videoEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final videoFrameProcessorMaxPendingFrameCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;Landroidx/media3/common/PreviewingVideoGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->compositingVideoSinkProvider:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->getMaxPendingFramesCountForMediaCodecDecoders(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->videoFrameProcessorMaxPendingFrameCount:I

    invoke-interface {p3}, Landroidx/media3/common/VideoGraph;->registerInput()I

    move-result p1

    invoke-interface {p3, p1}, Landroidx/media3/common/VideoGraph;->getProcessor(I)Landroidx/media3/common/VideoFrameProcessor;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->videoEffects:Ljava/util/ArrayList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->finalBufferPresentationTimeUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->lastBufferPresentationTimeUs:J

    return-void
.end method

.method private maybeRegisterInputStream()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->inputFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->videoEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    new-instance v1, Landroidx/media3/common/FrameInfo$Builder;

    iget-object v2, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v2}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->access$1000(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;

    move-result-object v2

    iget v3, v0, Landroidx/media3/common/Format;->width:I

    iget v4, v0, Landroidx/media3/common/Format;->height:I

    invoke-direct {v1, v2, v3, v4}, Landroidx/media3/common/FrameInfo$Builder;-><init>(Landroidx/media3/common/ColorInfo;II)V

    iget v0, v0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v1, v0}, Landroidx/media3/common/FrameInfo$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/FrameInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/FrameInfo$Builder;->build()Landroidx/media3/common/FrameInfo;

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public flush()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public isEnded()Z
    .locals 5

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->finalBufferPresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->compositingVideoSinkProvider:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->access$600(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrameDropAllowedOnInput()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->isFrameDropAllowedOnSurfaceInput(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->compositingVideoSinkProvider:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->access$500(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;)Z

    move-result v0

    return v0
.end method

.method public registerInputFrame(JZ)J
    .locals 2

    iget p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->videoFrameProcessorMaxPendingFrameCount:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-wide p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->pendingInputStreamBufferPresentationTimeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->compositingVideoSinkProvider:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

    invoke-static {p3, p1, p2}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->access$600(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;J)Z

    move-result p1

    if-nez p1, :cond_1

    return-wide v0

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->maybeRegisterInputStream()V

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->pendingInputStreamBufferPresentationTimeUs:J

    :cond_2
    const/4 p1, 0x0

    throw p1
.end method

.method public registerInputStream(ILandroidx/media3/common/Format;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    const-string v0, "Unsupported input type "

    .line 11
    .line 12
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p2

    .line 20
    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 23
    .line 24
    const/16 v2, 0x15

    .line 25
    .line 26
    if-ge v1, v2, :cond_2

    .line 27
    .line 28
    iget v1, p2, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    if-eq v1, v2, :cond_2

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    int-to-float v1, v1

    .line 36
    invoke-static {v1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl$ScaleAndRotateAccessor;->createRotationEffect(F)Landroidx/media3/common/Effect;

    .line 37
    .line 38
    .line 39
    :cond_2
    iput p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->inputType:I

    .line 40
    .line 41
    iput-object p2, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->inputFormat:Landroidx/media3/common/Format;

    .line 42
    .line 43
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->hasRegisteredFirstInputStream:Z

    .line 44
    .line 45
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->maybeRegisterInputStream()V

    .line 53
    .line 54
    .line 55
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->hasRegisteredFirstInputStream:Z

    .line 56
    .line 57
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->pendingInputStreamBufferPresentationTimeUs:J

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget-wide p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->lastBufferPresentationTimeUs:J

    .line 61
    .line 62
    cmp-long v3, p1, v1

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const/4 v0, 0x0

    .line 68
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 69
    .line 70
    .line 71
    iget-wide p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->lastBufferPresentationTimeUs:J

    .line 72
    .line 73
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->pendingInputStreamBufferPresentationTimeUs:J

    .line 74
    .line 75
    :goto_2
    return-void
.end method

.method public render(JJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->compositingVideoSinkProvider:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->render(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    iget-object p3, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->inputFormat:Landroidx/media3/common/Format;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroidx/media3/common/Format$Builder;

    invoke-direct {p3}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p3

    :goto_0
    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw p2
.end method

.method public setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->compositingVideoSinkProvider:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->access$700(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public setPendingVideoEffects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->videoEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->videoEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->compositingVideoSinkProvider:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->access$900(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;F)V

    return-void
.end method

.method public setStreamOffsetUs(J)V
    .locals 3

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->inputStreamOffsetUs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->pendingInputStreamOffsetChange:Z

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->inputStreamOffsetUs:J

    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->setPendingVideoEffects(Ljava/util/List;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->maybeRegisterInputStream()V

    return-void
.end method
