.class public final Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSinkProvider;
.implements Landroidx/media3/common/VideoGraph$Listener;
.implements Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;,
        Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;,
        Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$ReflectiveDefaultVideoFrameProcessorFactory;,
        Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$ReflectivePreviewingSingleInputVideoGraphFactory;
    }
.end annotation


# static fields
.field private static final NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private clock:Landroidx/media3/common/util/Clock;

.field private final context:Landroid/content/Context;

.field private currentSurfaceAndSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroidx/media3/common/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroidx/media3/common/util/HandlerWrapper;

.field private listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

.field private listenerExecutor:Ljava/util/concurrent/Executor;

.field private outputFormat:Landroidx/media3/common/Format;

.field private pendingFlushCount:I

.field private final previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

.field private state:I

.field private videoEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field private videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field private videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

.field private videoSinkImpl:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LG/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LG/b;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;->access$200(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;->access$300(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;)Landroidx/media3/common/PreviewingVideoGraph$Factory;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/PreviewingVideoGraph$Factory;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    sget-object p1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->clock:Landroidx/media3/common/util/Clock;

    sget-object p1, Landroidx/media3/exoplayer/video/VideoSink$Listener;->NO_OP:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    sget-object p1, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listenerExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->state:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;-><init>(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;Landroidx/media3/exoplayer/video/VideoSink$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->lambda$dropFrame$4(Landroidx/media3/exoplayer/video/VideoSink$Listener;)V

    return-void
.end method

.method public static synthetic access$1000(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->getAdjustedInputColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->isReady()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->hasReleasedFrame(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic access$900(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->setPlaybackSpeed(F)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->lambda$renderFrame$3(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->lambda$onVideoSizeChanged$2(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->lambda$static$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getAdjustedInputColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    :goto_0
    return-object p0
.end method

.method private hasReleasedFrame(J)Z
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->pendingFlushCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->hasReleasedFrame(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isReady()Z
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->pendingFlushCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$dropFrame$4(Landroidx/media3/exoplayer/video/VideoSink$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoSinkImpl:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFrameDropped(Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method private static synthetic lambda$onVideoSizeChanged$2(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;Landroidx/media3/common/VideoSize;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onVideoSizeChanged(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method private static synthetic lambda$renderFrame$3(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFirstFrameRendered(Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method private maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method private setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listenerExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listenerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private setPlaybackSpeed(F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->setPlaybackSpeed(F)V

    return-void
.end method


# virtual methods
.method public clearOutputSurfaceInfo()V
    .locals 3

    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->currentSurfaceAndSize:Landroid/util/Pair;

    return-void
.end method

.method public dropFrame()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, LG/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LA/g;->x(Ljava/lang/Object;)V

    throw v0
.end method

.method public getSink()Landroidx/media3/exoplayer/video/VideoSink;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoSinkImpl:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoSink;

    return-object v0
.end method

.method public getVideoFrameReleaseControl()Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    return-object v0
.end method

.method public initialize(Landroidx/media3/common/Format;)V
    .locals 14

    iget v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoEffects:Ljava/util/List;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->clock:Landroidx/media3/common/util/Clock;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->handler:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->getAdjustedInputColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;

    move-result-object v6

    iget v0, v6, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo;->buildUpon()Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v7, v6

    :goto_1
    :try_start_0
    iget-object v4, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    iget-object v5, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->context:Landroid/content/Context;

    sget-object v8, Landroidx/media3/common/DebugViewProvider;->NONE:Landroidx/media3/common/DebugViewProvider;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, LG/a;

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, LG/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    const-wide/16 v12, 0x0

    move-object v9, p0

    invoke-interface/range {v4 .. v13}, Landroidx/media3/common/PreviewingVideoGraph$Factory;->create(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Ljava/util/List;J)Landroidx/media3/common/PreviewingVideoGraph;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0, v1, v4, v0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v3}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;Landroidx/media3/common/PreviewingVideoGraph;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoSinkImpl:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoEffects:Ljava/util/List;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->setVideoEffects(Ljava/util/List;)V

    iput v2, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->state:I

    return-void

    :goto_3
    new-instance v1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v1
.end method

.method public isInitialized()Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 4

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/common/VideoSize;->height:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "video/raw"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->outputFormat:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoSinkImpl:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media3/exoplayer/video/b;

    invoke-direct {v3, v1, v0, p1}, Landroidx/media3/exoplayer/video/b;-><init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;Landroidx/media3/common/VideoSize;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iput-object v2, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->currentSurfaceAndSize:Landroid/util/Pair;

    iput v1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->state:I

    return-void
.end method

.method public render(JJ)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->pendingFlushCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->render(JJ)V

    :cond_0
    return-void
.end method

.method public renderFrame(JJJZ)V
    .locals 7

    if-eqz p7, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listenerExecutor:Ljava/util/concurrent/Executor;

    sget-object p2, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoSinkImpl:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    iget-object p2, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iget-object p7, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/media3/exoplayer/video/a;

    invoke-direct {v0, p2, p1}, Landroidx/media3/exoplayer/video/a;-><init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;)V

    invoke-interface {p7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->outputFormat:Landroidx/media3/common/Format;

    if-nez p1, :cond_1

    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    :cond_1
    move-object v5, p1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    sub-long v1, p3, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->nanoTime()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, LA/g;->x(Ljava/lang/Object;)V

    throw p1
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->isInitialized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->clock:Landroidx/media3/common/util/Clock;

    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/Size;

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->currentSurfaceAndSize:Landroid/util/Pair;

    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V

    return-void
.end method

.method public setStreamOffsetUs(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoSinkImpl:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->setStreamOffsetUs(J)V

    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoEffects:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoSinkImpl:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;->setVideoEffects(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method

.method public setVideoFrameReleaseControl(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->isInitialized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;-><init>(Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    return-void
.end method
