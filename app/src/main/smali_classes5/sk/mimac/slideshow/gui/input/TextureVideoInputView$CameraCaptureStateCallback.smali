.class Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/input/TextureVideoInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraCaptureStateCallback"
.end annotation


# instance fields
.field private final captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field final synthetic this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->access$300()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "Camera configuration failed"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback$1;

    invoke-direct {v1, p0}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback$1;-><init>(Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->videoInput:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->access$300()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Can\'t start camera preview"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    iget-object v0, p1, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p1, p1, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
