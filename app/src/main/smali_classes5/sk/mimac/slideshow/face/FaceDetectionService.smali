.class public Lsk/mimac/slideshow/face/FaceDetectionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/face/FaceDetectionService$CameraCaptureCallback;,
        Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;,
        Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static instance:Lsk/mimac/slideshow/face/FaceDetectionService;

.field private static thread:Ljava/lang/Thread;


# instance fields
.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final cameraId:Ljava/lang/String;

.field private cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final captureCaptureCallback:Lsk/mimac/slideshow/face/FaceDetectionService$CameraCaptureCallback;

.field private detector:Lcom/google/mlkit/vision/face/FaceDetector;

.field private final executor:Ljava/util/concurrent/Executor;

.field private fpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private imageReader:Landroid/media/ImageReader;

.field private lastFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;"
        }
    .end annotation
.end field

.field private lastImage:Landroid/media/Image;

.field private lastImageTimestamp:J

.field private final lock:Ljava/lang/Object;

.field private final pastResults:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lsk/mimac/slideshow/face/FaceDetectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStateCallback:Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;

.field private volatile waitingForImage:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->lock:Ljava/lang/Object;

    new-instance v0, Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService;Lsk/mimac/slideshow/face/FaceDetectionService$1;)V

    iput-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->sessionStateCallback:Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;

    new-instance v0, Lsk/mimac/slideshow/face/FaceDetectionService$CameraCaptureCallback;

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraCaptureCallback;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService$1;)V

    iput-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->captureCaptureCallback:Lsk/mimac/slideshow/face/FaceDetectionService$CameraCaptureCallback;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    new-instance v0, LG/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LG/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->executor:Ljava/util/concurrent/Executor;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->waitingForImage:J

    iput-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/face/FaceDetectionService;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/face/FaceDetectionService;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$1000(Lsk/mimac/slideshow/face/FaceDetectionService;)Lcom/google/mlkit/vision/face/FaceDetector;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->detector:Lcom/google/mlkit/vision/face/FaceDetector;

    return-object p0
.end method

.method public static synthetic access$1100(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static synthetic access$1300(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1400(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic access$1500(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->lastImage:Landroid/media/Image;

    return-object p0
.end method

.method public static synthetic access$1502(Lsk/mimac/slideshow/face/FaceDetectionService;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->lastImage:Landroid/media/Image;

    return-object p1
.end method

.method public static synthetic access$1602(Lsk/mimac/slideshow/face/FaceDetectionService;J)J
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->lastImageTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$1702(Lsk/mimac/slideshow/face/FaceDetectionService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->lastFaces:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1800()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static synthetic access$1900(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/util/Range;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->fpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public static synthetic access$2000(Lsk/mimac/slideshow/face/FaceDetectionService;)Lsk/mimac/slideshow/face/FaceDetectionService$CameraCaptureCallback;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->captureCaptureCallback:Lsk/mimac/slideshow/face/FaceDetectionService$CameraCaptureCallback;

    return-object p0
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public static synthetic access$302(Lsk/mimac/slideshow/face/FaceDetectionService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$500(Lsk/mimac/slideshow/face/FaceDetectionService;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->imageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public static synthetic access$600(Lsk/mimac/slideshow/face/FaceDetectionService;)Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->sessionStateCallback:Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;

    return-object p0
.end method

.method public static synthetic access$700()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$800(Lsk/mimac/slideshow/face/FaceDetectionService;)J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->waitingForImage:J

    return-wide v0
.end method

.method public static synthetic access$802(Lsk/mimac/slideshow/face/FaceDetectionService;J)J
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->waitingForImage:J

    return-wide p1
.end method

.method public static synthetic access$900(Lsk/mimac/slideshow/face/FaceDetectionService;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private createDetector()V
    .locals 3

    new-instance v0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setPerformanceMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->enableTracking()Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object v0

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_DETECT_EYES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setLandmarkMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setClassificationMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/face/FaceDetection;->getClient(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/FaceDetector;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->detector:Lcom/google/mlkit/vision/face/FaceDetector;

    return-void
.end method

.method public static getLastImage()[B
    .locals 8

    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->lastImage:Landroid/media/Image;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_ROTATION:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v2, v2, Lsk/mimac/slideshow/face/FaceDetectionService;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    move-result-object v3

    sget-object v4, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v4, v4, Lsk/mimac/slideshow/face/FaceDetectionService;->lastImage:Landroid/media/Image;

    invoke-virtual {v3, v4, v0}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->convertJpegToUpRightBitmap(Landroid/media/Image;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-wide v4, v4, Lsk/mimac/slideshow/face/FaceDetectionService;->lastImageTimestamp:J

    invoke-static {v4, v5}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v4

    invoke-static {}, Lj$/time/OffsetDateTime;->now()Lj$/time/OffsetDateTime;

    move-result-object v5

    invoke-virtual {v5}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/time/Instant;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v6, v6, Lsk/mimac/slideshow/face/FaceDetectionService;->lastFaces:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v6, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v6, v6, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v1, v1, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/face/FaceDetectionResult;

    invoke-virtual {v6}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getTime()Lj$/time/LocalTime;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/face/FaceDetectionResult;

    invoke-virtual {v1}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getTime()Lj$/time/LocalTime;

    move-result-object v1

    sget-object v7, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v7, v1, v6}, Lj$/time/temporal/ChronoUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v6

    long-to-int v1, v6

    sget-object v6, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_DELAY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v6}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v1, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v5, v4, v0, v1}, Lsk/mimac/slideshow/face/FaceDetectionUtils;->createSvg(Landroid/graphics/Bitmap;Ljava/util/List;Lj$/time/OffsetDateTime;II)[B

    move-result-object v0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    new-array v0, v1, [B

    return-object v0
.end method

.method public static getLastImageSize()Landroid/util/Size;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->lastImage:Landroid/media/Image;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/Size;

    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v1, v1, Lsk/mimac/slideshow/face/FaceDetectionService;->lastImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v1

    sget-object v2, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v2, v2, Lsk/mimac/slideshow/face/FaceDetectionService;->lastImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getOptimalFpsRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_1

    div-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v5, v5, 0x3e8

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_3

    sub-int/2addr v5, v4

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v4, v6

    if-lt v5, v4, :cond_3

    :cond_2
    move-object v0, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getOptimalSize([Landroid/util/Size;)Landroid/util/Size;
    .locals 7

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_PREFERRED_IMAGE_WIDTH:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-lt v5, v6, :cond_2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_3

    :cond_2
    :goto_1
    move-object v2, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static getResult(I)Lsk/mimac/slideshow/face/FaceDetectionResult;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v1, v1, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v1, v1, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object p0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/face/FaceDetectionResult;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v1, v1, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/face/FaceDetectionResult;

    monitor-exit v0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lsk/mimac/slideshow/face/FaceDetectionResult;

    invoke-direct {p0}, Lsk/mimac/slideshow/face/FaceDetectionResult;-><init>()V

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/face/FaceDetectionResult;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v2, v2, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getResults(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/face/FaceDetectionResult;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v1, v1, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v3, v3, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    sub-int p1, v1, p1

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr v1, p0

    invoke-virtual {v3, p1, v1}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStatistics()Lsk/mimac/slideshow/face/FaceDetectionStatistics;
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v1, v1, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lsk/mimac/slideshow/face/FaceDetectionStatistics;

    invoke-direct {v1}, Lsk/mimac/slideshow/face/FaceDetectionStatistics;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v2, v2, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/face/FaceDetectionResult;

    invoke-virtual {v3}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getTrackingIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lsk/mimac/slideshow/face/FaceDetectionStatistics;

    sget-object v3, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v3, v3, Lsk/mimac/slideshow/face/FaceDetectionService;->pastResults:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/face/FaceDetectionResult;

    invoke-virtual {v3}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getTrackingIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lsk/mimac/slideshow/face/FaceDetectionStatistics;-><init>(II)V

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static start()V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->stop()V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_CAMERA_ID:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/face/FaceDetectionService;-><init>(Ljava/lang/String;)V

    sput-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    const-string v2, "FaceDetection"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static stop()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->thread:Ljava/lang/Thread;

    const-wide/32 v1, 0x9c40

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Waiting for face detection stop interrupted"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->detector:Lcom/google/mlkit/vision/face/FaceDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/mlkit/vision/face/FaceDetector;->close()V

    :cond_2
    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->imageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_3
    sget-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    iget-object v0, v0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->thread:Ljava/lang/Thread;

    sput-object v0, Lsk/mimac/slideshow/face/FaceDetectionService;->instance:Lsk/mimac/slideshow/face/FaceDetectionService;

    :cond_5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-direct {p0}, Lsk/mimac/slideshow/face/FaceDetectionService;->createDetector()V

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraManager:Landroid/hardware/camera2/CameraManager;

    :goto_0
    :try_start_1
    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Camera \'{}\' was not found, check if it is connected"

    iget-object v3, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/face/FaceDetectionService;->getOptimalSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    invoke-static {v1}, Lsk/mimac/slideshow/face/FaceDetectionService;->getOptimalFpsRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->fpsRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v1, v4, v3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->imageReader:Landroid/media/ImageReader;

    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Starting face detection with camera: {}, imageSize={}x{}"

    iget-object v4, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraId:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const/4 v4, 0x2

    aput-object v2, v6, v4

    invoke-interface {v1, v3, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->cameraId:Ljava/lang/String;

    new-instance v3, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;-><init>(Lsk/mimac/slideshow/face/FaceDetectionService;Lsk/mimac/slideshow/face/FaceDetectionService$1;)V

    iget-object v4, p0, Lsk/mimac/slideshow/face/FaceDetectionService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :goto_1
    sget-object v2, Lsk/mimac/slideshow/face/FaceDetectionService;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t access camera {}"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const-wide/16 v1, 0x4e20

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/face/FaceDetectionService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Interrupted while waiting"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
