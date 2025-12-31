.class Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/face/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/face/FaceDetectionService;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/face/FaceDetectionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/face/FaceDetectionService;Lsk/mimac/slideshow/face/FaceDetectionService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService;)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->lambda$onImageAvailable$4(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->lambda$onImageAvailable$2(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->lambda$onImageAvailable$3()V

    return-void
.end method

.method private createCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V
    .locals 10

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Creating capture session for camera \'{}\'"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0, v5, v6}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$802(Lsk/mimac/slideshow/face/FaceDetectionService;J)J

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$400(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/face/a;

    move-object v3, v1

    move-object v4, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lsk/mimac/slideshow/face/a;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;JLandroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$400(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object p2

    const-string p3, "Can\'t access camera"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;Landroid/media/Image;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->lambda$onImageAvailable$1(Landroid/media/Image;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;JLandroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->lambda$createCaptureSession$0(JLandroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V

    return-void
.end method

.method private synthetic lambda$createCaptureSession$0(JLandroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1800()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1800()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$800(Lsk/mimac/slideshow/face/FaceDetectionService;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object p1

    const p2, 0x9c40

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Camera timeout after {} ms"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p3, p4, p5}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->createCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onImageAvailable$1(Landroid/media/Image;Ljava/util/List;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->processResult(Landroid/media/Image;Ljava/util/List;)Lsk/mimac/slideshow/face/FaceDetectionResult;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1300(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1400(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1400(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0x3c

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1400(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1500(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1500(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    :cond_1
    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v2, p1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1502(Lsk/mimac/slideshow/face/FaceDetectionService;Landroid/media/Image;)Landroid/media/Image;

    iget-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1602(Lsk/mimac/slideshow/face/FaceDetectionService;J)J

    iget-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {p1, p2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1702(Lsk/mimac/slideshow/face/FaceDetectionService;Ljava/util/List;)Ljava/util/List;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lsk/mimac/slideshow/item/ItemCounter;->processFaceDetectionData(Lsk/mimac/slideshow/face/FaceDetectionResult;)V

    sget-object p1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->FACE_DETECTION:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static synthetic lambda$onImageAvailable$2(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Can\'t detect faces"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onImageAvailable$3()V
    .locals 4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Z9X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$300(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1200(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1100(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    iget-object v3, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-direct {v2, v3}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService;)V

    iget-object v3, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v3}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$400(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Can\'t access camera {}"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->start()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$300(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$500(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$600(Lsk/mimac/slideshow/face/FaceDetectionService;)Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->createCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onImageAvailable$4(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {p1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$400(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lsk/mimac/slideshow/face/e;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/face/e;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;)V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_DELAY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private processResult(Landroid/media/Image;Ljava/util/List;)Lsk/mimac/slideshow/face/FaceDetectionResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;)",
            "Lsk/mimac/slideshow/face/FaceDetectionResult;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_MIN_FACE_SIZE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_MIN_EYES_OPENED:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getFloat()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/mlkit/vision/face/Face;

    invoke-virtual {v6}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v8

    div-int/2addr v7, v8

    if-ge v7, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/google/mlkit/vision/face/Face;->getRightEyeOpenProbability()Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/google/mlkit/vision/face/Face;->getRightEyeOpenProbability()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6}, Lcom/google/mlkit/vision/face/Face;->getLeftEyeOpenProbability()Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Lcom/google/mlkit/vision/face/Face;->getLeftEyeOpenProbability()Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/mlkit/vision/face/Face;->getTrackingId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    cmpg-float v6, v8, v1

    if-gez v6, :cond_3

    goto :goto_0

    :cond_3
    if-le v7, v3, :cond_4

    move v3, v7

    :cond_4
    add-float/2addr v5, v8

    goto :goto_0

    :cond_5
    new-instance p1, Lsk/mimac/slideshow/face/FaceDetectionResult;

    invoke-static {}, Lj$/time/LocalTime;->now()Lj$/time/LocalTime;

    move-result-object p2

    invoke-direct {p1, p2, v2, v3, v5}, Lsk/mimac/slideshow/face/FaceDetectionResult;-><init>(Lj$/time/LocalTime;Ljava/util/Set;IF)V

    return-object p1
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "Camera was disconnected"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->start()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$700()Lorg/slf4j/Logger;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Camera returned error code={}"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->start()V

    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$802(Lsk/mimac/slideshow/face/FaceDetectionService;J)J

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$1000(Lsk/mimac/slideshow/face/FaceDetectionService;)Lcom/google/mlkit/vision/face/FaceDetector;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_ROTATION:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/mlkit/vision/interfaces/Detector;->process(Landroid/media/Image;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$900(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/face/b;

    invoke-direct {v2, p0, p1}, Lsk/mimac/slideshow/face/b;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;Landroid/media/Image;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$900(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/face/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$900(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/face/d;

    invoke-direct {v1, p0}, Lsk/mimac/slideshow/face/d;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$302(Lsk/mimac/slideshow/face/FaceDetectionService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$500(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$400(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$500(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->this$0:Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->access$600(Lsk/mimac/slideshow/face/FaceDetectionService;)Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->createCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V

    return-void
.end method
