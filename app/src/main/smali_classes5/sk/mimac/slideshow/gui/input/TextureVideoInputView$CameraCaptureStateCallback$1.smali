.class Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback$1;->this$1:Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback$1;->this$1:Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->access$300()Lorg/slf4j/Logger;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Camera capture failed, reason={}"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback$1;->this$1:Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback$1;->this$1:Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    iget-object p2, p1, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p1, p1, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
