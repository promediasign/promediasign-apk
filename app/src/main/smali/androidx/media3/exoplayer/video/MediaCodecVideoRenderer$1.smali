.class Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onReadyToInitializeCodec(Landroidx/media3/common/Format;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$000(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$100(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    return-void
.end method

.method public onFrameDropped(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/common/VideoSize;)V
    .locals 0

    return-void
.end method
