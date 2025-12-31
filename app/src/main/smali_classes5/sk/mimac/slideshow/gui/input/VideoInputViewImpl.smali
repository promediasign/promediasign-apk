.class public abstract Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;
.super Lsk/mimac/slideshow/gui/input/VideoInputView;
.source "SourceFile"


# instance fields
.field protected cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field protected hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

.field protected lastMirror:Z

.field protected lastRotation:I

.field protected lastVolume:I

.field protected playId:I

.field private final tvView:Landroid/media/tv/TvView;

.field protected videoInput:Ljava/lang/String;

.field protected wasCleared:Z


# direct methods
.method public constructor <init>(Landroid/media/tv/TvView;)V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/input/VideoInputView;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->tvView:Landroid/media/tv/TvView;

    return-void
.end method


# virtual methods
.method public getSupportedPreviewFrameRate(Lcom/realtek/hardware/HDMIRxParameters;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/realtek/hardware/HDMIRxParameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1, v0}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    const/16 p1, 0x1e

    .line 26
    .line 27
    return p1
.end method

.method public show(Ljava/lang/String;IIZI)V
    .locals 0

    iput p5, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    iget-object p5, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->videoInput:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    iget p5, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastVolume:I

    if-ne p5, p2, :cond_0

    iget p5, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastRotation:I

    if-ne p5, p3, :cond_0

    iget-boolean p5, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastMirror:Z

    if-ne p5, p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iput p2, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastVolume:I

    iput p3, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastRotation:I

    iput-boolean p4, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastMirror:Z

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputView;->hide()V

    invoke-static {p1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p4, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->tvView:Landroid/media/tv/TvView;

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->tvView:Landroid/media/tv/TvView;

    invoke-virtual {p4, p1, p3}, Landroid/media/tv/TvView;->tune(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p3, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->tvView:Landroid/media/tv/TvView;

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/media/tv/TvView;->setStreamVolume(F)V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->videoInput:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->showInternal(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public abstract showInternal(Ljava/lang/String;I)V
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    :goto_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputView;->clearSurface()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->release()V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->wasCleared:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->videoInput:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->tvView:Landroid/media/tv/TvView;

    invoke-virtual {v0}, Landroid/media/tv/TvView;->reset()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->tvView:Landroid/media/tv/TvView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iput-object v1, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->videoInput:Ljava/lang/String;

    return-void
.end method
