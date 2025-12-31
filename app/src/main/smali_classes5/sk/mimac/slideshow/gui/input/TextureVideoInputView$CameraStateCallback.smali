.class Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/input/TextureVideoInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraStateCallback"
.end annotation


# instance fields
.field private final cameraId:Ljava/lang/String;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field final synthetic this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object p3, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->cameraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    iput-object p1, v0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->cameraId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->access$000(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->cameraId:Ljava/lang/String;

    invoke-static {v0, v2}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->access$100(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->access$200(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-direct {v1, v2, v3}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;-><init>(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->access$300()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Can\'t prepare camera preview"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;->this$0:Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    iget-object v0, p1, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p1, p1, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
