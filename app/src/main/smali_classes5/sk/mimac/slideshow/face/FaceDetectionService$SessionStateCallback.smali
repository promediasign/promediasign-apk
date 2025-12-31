.class Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/face/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/face/FaceDetectionService;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/face/FaceDetectionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/face/FaceDetectionService;Lsk/mimac/slideshow/face/FaceDetectionService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService;)V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "Can\'t configure camera"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Configuring camera \'{}\'"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_CONTROL_AWB_MODE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_EXPOSURE_COMPENSATION:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1900(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/util/Range;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1900(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$500(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$2000(Lsk/mimac/slideshow/face/FaceDetectionService;)Lsk/mimac/slideshow/face/FaceDetectionService$CameraCaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$400(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Can\'t access camera"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
