.class public Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;
.super Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final surfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroid/media/tv/TvView;)V
    .locals 0

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;-><init>(Landroid/media/tv/TvView;)V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->surfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->lambda$showHdmi$0(Ljava/lang/String;III)V

    return-void
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

    return-object p1

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

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private synthetic lambda$showHdmi$0(Ljava/lang/String;III)V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->LOG:Lorg/slf4j/Logger;

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

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->playHdmi(Ljava/lang/String;I)V

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
    .locals 5

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

    sget-object p1, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->LOG:Lorg/slf4j/Logger;

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

    invoke-direct {p0, v1, v4, v0}, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->getSupportedPreviewSize(Lcom/realtek/hardware/HDMIRxParameters;II)Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v4, v0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    iget v0, v0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    invoke-virtual {v3, v4, v0}, Lcom/realtek/hardware/HDMIRxParameters;->setPreviewSize(II)V

    :cond_3
    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->getSupportedPreviewFrameRate(Lcom/realtek/hardware/HDMIRxParameters;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/realtek/hardware/HDMIRxParameters;->setPreviewFrameRate(I)V

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkHDMIRxManager;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

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

    sget-object p2, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->LOG:Lorg/slf4j/Logger;

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
    sget-object p1, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string p2, "HDMI input is not plugged in or ready"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    sget-object p1, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string p2, "HDMI input is not ready"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private showHdmi(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-direct {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->release()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->prepare()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->hdmiManager:Lcom/realtek/hardware/RtkHDMIRxManager;

    new-instance v1, Lm1/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lm1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkHDMIRxManager;->setListener(Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;)V

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->playHdmi(Ljava/lang/String;I)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Surface texture is not ready yet"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p2, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearSurface()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->surfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->surfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public showInternal(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    const-string v0, "HdmiIN-RTD1619DK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->showHdmi(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object p2, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t setup HDMI input"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->stop()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/input/VideoInputView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    iget p2, p0, Lsk/mimac/slideshow/gui/input/VideoInputViewImpl;->playId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Camera input is not supported in the video input compatible mode"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
