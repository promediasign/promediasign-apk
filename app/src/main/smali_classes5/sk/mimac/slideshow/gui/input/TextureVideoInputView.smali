.class public Lsk/mimac/slideshow/gui/input/TextureVideoInputView;
.super Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;,
        Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraCaptureStateCallback;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private imageHeight:I

.field private imageWidth:I

.field private lastNoSignalRectangle:Lsk/mimac/slideshow/utils/Rectangle;

.field private lastNoSignalRectangleTimestamp:J

.field private final scaleType:Lsk/mimac/slideshow/enums/ScaleType;

.field private final textureView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Landroid/media/tv/TvView;)V
    .locals 2

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;-><init>(Landroid/media/tv/TvView;)V

    sget-object p2, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_SCALE_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v0, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p2

    check-cast p2, Lsk/mimac/slideshow/enums/ScaleType;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->scaleType:Lsk/mimac/slideshow/enums/ScaleType;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->lastNoSignalRectangleTimestamp:J

    iput-object p1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lm1/b;

    invoke-direct {p2, p0}, Lm1/b;-><init>(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->lambda$showHdmi$1(Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Size;
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->setUpCameraOutputs(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Range;
    .locals 0

    invoke-static {p0, p1}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->getOptimalFpsRange(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic b(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private static getOptimalFpsRange(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Range;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    const/4 v4, 0x0

    if-eqz p0, :cond_5

    array-length v5, p0

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, p0, v6

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v3, :cond_1

    div-int/2addr v8, v3

    div-int/2addr v9, v3

    :cond_1
    if-eq v8, v9, :cond_3

    if-lt v8, v1, :cond_3

    const/16 v10, 0x3c

    if-gt v9, v10, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v9, v10, :cond_3

    sub-int/2addr v9, v8

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v8, v10

    if-lt v9, v8, :cond_3

    :cond_2
    move-object v4, v7

    :cond_3
    add-int/2addr v6, v0

    goto :goto_0

    :cond_4
    sget-object v3, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    aput-object p0, v5, v0

    aput-object p1, v5, v1

    const-string p0, "Using FPS range {} out of {} for camera \'{}\'"

    invoke-interface {v3, p0, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-object v4
.end method

.method private getSupportedPreviewSize(Lcom/realtek/hardware/HDMIRxParameters;II)Lcom/realtek/hardware/RtkHDMIRxManager$Size;
    .locals 3

    invoke-virtual {p1}, Lcom/realtek/hardware/HDMIRxParameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    iget v2, v2, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    if-ne p2, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    iget v2, v2, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    if-ne p3, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    new-instance p2, Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    iget p3, p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    iget p1, p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    invoke-direct {p2, p3, p1}, Lcom/realtek/hardware/RtkHDMIRxManager$Size;-><init>(II)V

    return-object p2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 1
    invoke-static {p1, p2}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-static {p1, p2}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    new-instance p2, Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    iget p3, p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    iget p1, p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    invoke-direct {p2, p3, p1}, Lcom/realtek/hardware/RtkHDMIRxManager$Size;-><init>(II)V

    return-object p2

    :cond_3
    :goto_1
    return-object v0
.end method

.method private hasSwappedDimensions(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->setScaleMatrix()V

    return-void
.end method

.method private synthetic lambda$showHdmi$1(Ljava/lang/String;III)V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Received HDMI input event={}, value={}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_2

    if-ne p4, v0, :cond_2

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->playHdmi(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p2, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private playHdmi(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->isHDMIRxPlugged()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->getHDMIRxStatus()Lcom/realtek/hardware/HDMIRxStatus;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v1, v0, Lcom/realtek/hardware/HDMIRxStatus;->status:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-virtual {v3, v1}, Lcom/realtek/hardware/RtkHDMIRxManager;->open(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Opening HDMI input failed: {}"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p2, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v1, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-virtual {v1}, Lcom/realtek/hardware/RtkHDMIRxManager;->getParameters()Lcom/realtek/hardware/HDMIRxParameters;

    move-result-object v1

    new-instance v3, Lcom/realtek/hardware/HDMIRxParameters;

    invoke-direct {v3}, Lcom/realtek/hardware/HDMIRxParameters;-><init>()V

    iget v4, v0, Lcom/realtek/hardware/HDMIRxStatus;->width:I

    iget v0, v0, Lcom/realtek/hardware/HDMIRxStatus;->height:I

    invoke-direct {p0, v1, v4, v0}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->getSupportedPreviewSize(Lcom/realtek/hardware/HDMIRxParameters;II)Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v4, v0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    iget v5, v0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/realtek/hardware/HDMIRxParameters;->setPreviewSize(II)V

    iget v4, v0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    iput v4, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    iget v0, v0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    iput v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->setScaleMatrix()V

    :cond_3
    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->getSupportedPreviewFrameRate(Lcom/realtek/hardware/HDMIRxParameters;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/realtek/hardware/HDMIRxParameters;->setPreviewFrameRate(I)V

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkHDMIRxManager;->setPreviewDisplay3(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-virtual {v0, v3}, Lcom/realtek/hardware/RtkHDMIRxManager;->setParameters(Lcom/realtek/hardware/HDMIRxParameters;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->play()I

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, v2, p2}, Lcom/realtek/hardware/RtkHDMIRxManager;->setPlayback(ZZ)V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->videoInput:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Error while setting up HDMI input playback"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p2, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    sget-object p1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string p2, "HDMI input is not plugged in or ready"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    sget-object p1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string p2, "HDMI input is not ready"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private setScaleMatrix()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    if-eqz v8, :cond_c

    iget v8, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    cmpg-float v9, v6, v8

    if-lez v9, :cond_c

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iget v9, v0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastRotation:I

    if-eqz v9, :cond_1

    const/16 v10, 0xb4

    if-eq v9, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    sget-object v10, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$1;->$SwitchMap$sk$mimac$slideshow$enums$ScaleType:[I

    iget-object v11, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->scaleType:Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v5, :cond_a

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v10, v3, :cond_7

    if-eq v10, v2, :cond_5

    if-eq v10, v1, :cond_2

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_2
    iget v10, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    int-to-float v10, v10

    div-float v10, v6, v10

    iget v11, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    int-to-float v11, v11

    div-float v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v12

    if-eqz v9, :cond_4

    iget v9, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    int-to-float v9, v9

    iget v13, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    int-to-float v13, v13

    div-float/2addr v9, v13

    div-float v13, v7, v6

    cmpg-float v13, v9, v13

    if-gez v13, :cond_3

    div-float v13, v6, v7

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    :goto_1
    div-float/2addr v12, v9

    goto :goto_3

    :cond_3
    div-float v13, v6, v7

    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :goto_2
    mul-float v12, v12, v9

    :cond_4
    :goto_3
    div-float v9, v12, v10

    div-float v11, v12, v11

    move/from16 v16, v11

    move v11, v9

    move/from16 v9, v16

    goto :goto_5

    :cond_5
    iget v10, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    int-to-float v10, v10

    div-float v10, v6, v10

    iget v11, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    int-to-float v11, v11

    div-float v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    if-eqz v9, :cond_4

    iget v9, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    int-to-float v9, v9

    iget v13, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    int-to-float v13, v13

    div-float/2addr v9, v13

    div-float v13, v7, v6

    cmpl-float v13, v9, v13

    if-lez v13, :cond_6

    div-float v13, v6, v7

    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto :goto_1

    :cond_6
    div-float v13, v6, v7

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_2

    :cond_7
    if-eqz v9, :cond_8

    div-float v10, v7, v6

    goto :goto_4

    :cond_8
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_4
    if-eqz v9, :cond_9

    div-float v11, v6, v7

    :cond_9
    move v9, v11

    move v11, v10

    goto :goto_5

    :cond_a
    iget v9, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    int-to-float v9, v9

    div-float v11, v9, v6

    iget v9, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    :goto_5
    iget-boolean v10, v0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastMirror:Z

    if-eqz v10, :cond_b

    neg-float v11, v11

    :cond_b
    const/high16 v10, 0x40000000    # 2.0f

    div-float v12, v6, v10

    div-float v10, v7, v10

    invoke-virtual {v8, v11, v9, v12, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget v13, v0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastRotation:I

    int-to-float v13, v13

    invoke-virtual {v8, v13, v12, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    sget-object v10, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    iget-object v12, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->scaleType:Lsk/mimac/slideshow/enums/ScaleType;

    iget v13, v0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastRotation:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v14, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v12, v1, v4

    aput-object v13, v1, v5

    aput-object v6, v1, v3

    aput-object v7, v1, v2

    const/4 v2, 0x4

    aput-object v14, v1, v2

    const/4 v2, 0x5

    aput-object v15, v1, v2

    const/4 v2, 0x6

    aput-object v11, v1, v2

    const/4 v2, 0x7

    aput-object v9, v1, v2

    const-string v2, "Video input scaling: type={}, rotate={}, viewWidth={}, viewHeight={}, imageWidth={}, imageHeight={}, scaleX={}, scaleY={}"

    invoke-interface {v10, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1, v8}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_c
    :goto_6
    return-void
.end method

.method private setUpCameraOutputs(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Size;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct/range {p0 .. p1}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->hasSwappedDimensions(Landroid/hardware/camera2/CameraCharacteristics;)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    iget v4, v0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->lastRotation:I

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const/16 v6, 0xb4

    .line 16
    .line 17
    if-eq v4, v6, :cond_0

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    :goto_0
    xor-int/2addr v4, v3

    .line 23
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 24
    .line 25
    move-object/from16 v7, p1

    .line 26
    .line 27
    invoke-virtual {v7, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 32
    .line 33
    const-class v7, Landroid/graphics/SurfaceTexture;

    .line 34
    .line 35
    invoke-virtual {v6, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-eqz v6, :cond_c

    .line 40
    .line 41
    array-length v7, v6

    .line 42
    if-eqz v7, :cond_c

    .line 43
    .line 44
    iget-object v7, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    .line 45
    .line 46
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    int-to-float v7, v7

    .line 51
    iget-object v8, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    .line 52
    .line 53
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    int-to-float v8, v8

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    div-float v9, v8, v7

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    div-float v9, v7, v8

    .line 64
    .line 65
    :goto_1
    aget-object v10, v6, v5

    .line 66
    .line 67
    array-length v11, v6

    .line 68
    const/4 v12, 0x0

    .line 69
    :goto_2
    if-ge v12, v11, :cond_4

    .line 70
    .line 71
    aget-object v13, v6, v12

    .line 72
    .line 73
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    if-gt v14, v15, :cond_2

    .line 82
    .line 83
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    if-le v14, v15, :cond_3

    .line 92
    .line 93
    :cond_2
    move-object v10, v13

    .line 94
    :cond_3
    add-int/2addr v12, v2

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    int-to-float v11, v11

    .line 101
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    int-to-float v12, v12

    .line 106
    div-float/2addr v11, v12

    .line 107
    array-length v12, v6

    .line 108
    const/4 v13, 0x0

    .line 109
    :goto_3
    if-ge v13, v12, :cond_9

    .line 110
    .line 111
    aget-object v14, v6, v13

    .line 112
    .line 113
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-lt v15, v5, :cond_5

    .line 122
    .line 123
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    if-ge v5, v15, :cond_8

    .line 132
    .line 133
    :cond_5
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    int-to-float v5, v5

    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    move v15, v8

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    move v15, v7

    .line 143
    :goto_4
    cmpl-float v5, v5, v15

    .line 144
    .line 145
    if-lez v5, :cond_8

    .line 146
    .line 147
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    int-to-float v5, v5

    .line 152
    if-eqz v4, :cond_7

    .line 153
    .line 154
    move v15, v7

    .line 155
    goto :goto_5

    .line 156
    :cond_7
    move v15, v8

    .line 157
    :goto_5
    cmpl-float v5, v5, v15

    .line 158
    .line 159
    if-lez v5, :cond_8

    .line 160
    .line 161
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    int-to-float v5, v5

    .line 166
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    int-to-float v15, v15

    .line 171
    div-float/2addr v5, v15

    .line 172
    sub-float v15, v5, v9

    .line 173
    .line 174
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    sub-float v16, v11, v9

    .line 179
    .line 180
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    .line 181
    .line 182
    .line 183
    move-result v16

    .line 184
    cmpg-float v15, v15, v16

    .line 185
    .line 186
    if-gez v15, :cond_8

    .line 187
    .line 188
    move v11, v5

    .line 189
    move-object v10, v14

    .line 190
    :cond_8
    add-int/2addr v13, v2

    .line 191
    const/4 v5, 0x0

    .line 192
    goto :goto_3

    .line 193
    :cond_9
    if-eqz v3, :cond_a

    .line 194
    .line 195
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    goto :goto_6

    .line 200
    :cond_a
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    :goto_6
    iput v4, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    .line 205
    .line 206
    if-eqz v3, :cond_b

    .line 207
    .line 208
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    goto :goto_7

    .line 213
    :cond_b
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    :goto_7
    iput v4, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    .line 218
    .line 219
    sget-object v4, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    .line 220
    .line 221
    iget v5, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageWidth:I

    .line 222
    .line 223
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    iget v6, v0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->imageHeight:I

    .line 228
    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    const/4 v7, 0x4

    .line 238
    new-array v7, v7, [Ljava/lang/Object;

    .line 239
    .line 240
    const/4 v8, 0x0

    .line 241
    aput-object v5, v7, v8

    .line 242
    .line 243
    aput-object v6, v7, v2

    .line 244
    .line 245
    const/4 v2, 0x2

    .line 246
    aput-object v1, v7, v2

    .line 247
    .line 248
    const/4 v1, 0x3

    .line 249
    aput-object v3, v7, v1

    .line 250
    .line 251
    const-string v1, "Using resolution: width={}, height={} for camera \'{}\', swappedDimensions={}"

    .line 252
    .line 253
    invoke-interface {v4, v1, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->setScaleMatrix()V

    .line 257
    .line 258
    .line 259
    return-object v10

    .line 260
    :cond_c
    new-instance v2, Lsk/mimac/slideshow/item/CantShowException;

    .line 261
    .line 262
    const-string v3, "Camera \'"

    .line 263
    .line 264
    const-string v4, "\' doesn\'t support outputting video on screen"

    .line 265
    .line 266
    invoke-static {v3, v1, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-direct {v2, v1}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v2
.end method

.method private showCamera(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    :try_start_0
    new-instance v2, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;

    invoke-direct {v2, p0, v0, p1}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView$CameraStateCallback;-><init>(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    const/4 p1, 0x2

    aput-object v0, v3, p1

    const-string p1, "Camera \'{}\' was not found, check if it is connected (knownCamera={}): {}"

    invoke-interface {v2, p1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private showHdmi(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Surface texture is not ready yet"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p2, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-direct {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->release()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->prepare()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    new-instance v1, Lm1/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lm1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkHDMIRxManager;->setListener(Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;)V

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->playHdmi(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public clearSurface()V
    .locals 13

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, -0x1000000

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v7, v1

    int-to-float v12, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v10

    move v8, v12

    move-object v9, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v4, -0xbbbbbc

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41400000    # 12.0f

    div-float/2addr v12, v4

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->lastNoSignalRectangle:Lsk/mimac/slideshow/utils/Rectangle;

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->lastNoSignalRectangleTimestamp:J

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0xfa0

    cmp-long v12, v6, v8

    if-lez v12, :cond_1

    :cond_0
    new-instance v6, Lsk/mimac/slideshow/utils/Rectangle;

    div-int/lit8 v7, v1, 0x9

    sget-object v8, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->RANDOM:Ljava/util/Random;

    mul-int/lit8 v9, v1, 0x4

    div-int/lit8 v9, v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v9, v7

    div-int/lit8 v7, v2, 0x9

    mul-int/lit8 v12, v2, 0x4

    div-int/lit8 v12, v12, 0x9

    invoke-virtual {v8, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v7

    div-int/lit8 v1, v1, 0x3

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v6, v9, v8, v1, v2}, Lsk/mimac/slideshow/utils/Rectangle;-><init>(IIII)V

    iput-object v6, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->lastNoSignalRectangle:Lsk/mimac/slideshow/utils/Rectangle;

    iput-wide v4, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->lastNoSignalRectangleTimestamp:J

    :cond_1
    const-string v1, "no_input_signal"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->lastNoSignalRectangle:Lsk/mimac/slideshow/utils/Rectangle;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Rectangle;->copy()Lsk/mimac/slideshow/utils/Rectangle;

    move-result-object v2

    invoke-static {v10, v1, v11, v2}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->drawTextInRectangle(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;Lsk/mimac/slideshow/utils/Rectangle;)V

    :try_start_0
    new-instance v1, Lsk/mimac/slideshow/gui/EGLPosterRenderer;

    invoke-direct {v1, v3, v0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->wasCleared:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t clear surface"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showInternal(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "HdmiIN-RTD1619DK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->showHdmi(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object p2, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t setup HDMI input"

    :goto_1
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p2, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->showCamera(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    sget-object p2, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t setup camera input"

    goto :goto_1

    :goto_2
    return-void
.end method
