.class public Lcom/realtek/hardware/RtkVoutUtilManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FORMAT_3D_AUTO_DETECT:I = 0x0

.field public static final FORMAT_3D_NULL:I = -0x1

.field public static final FORMAT_3D_NULL_FOR_TV:I = 0x4

.field public static final FORMAT_3D_RESERVED:I = 0x1

.field public static final FORMAT_3D_SIDE_BY_SIDE:I = 0x2

.field public static final FORMAT_3D_SIDE_BY_SIDE_FOR_TV:I = 0x5

.field public static final FORMAT_3D_SUB_EXTERNAL:I = 0x0

.field public static final FORMAT_3D_SUB_INTERNAL:I = 0x1

.field public static final FORMAT_3D_TOP_AND_BOTTOM:I = 0x3

.field public static final FORMAT_3D_TOP_AND_BOTTOM_FOR_TV:I = 0x6

.field private static final TAG:Ljava/lang/String; = "RtkVoutUtilManager"

.field public static final ZOOM_STATE_2X:I = 0x1

.field public static final ZOOM_STATE_3X:I = 0x2

.field public static final ZOOM_STATE_4X:I = 0x3

.field public static final ZOOM_STATE_8X:I = 0x4

.field public static final ZOOM_STATE_NONE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrV1Rect:Landroid/graphics/Rect;

.field private mOriginV1Rect:Landroid/graphics/Rect;

.field private mZoomState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rtk-display_ctrl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mZoomState:I

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    return-void
.end method

.method private native _applyVoutDisplayWindowSetup()Z
.end method

.method private native _getHWCV1Rect()Landroid/graphics/Rect;
.end method

.method private native _init()Z
.end method

.method private native _isCVBSOn()Z
.end method

.method private native _isHDRtv()Z
.end method

.method private native _set3dSub(I)Z
.end method

.method private native _set3dto2d(I)Z
.end method

.method private native _setAspectRatio(II)V
.end method

.method private native _setBrightness(I)V
.end method

.method private native _setCVBSDisplayRatio(I)Z
.end method

.method private native _setCVBSOff(I)V
.end method

.method private native _setContrast(I)V
.end method

.method private native _setCopyMode(II)V
.end method

.method private native _setDisplayPosition(IIII)Z
.end method

.method private native _setDisplayRatio(I)Z
.end method

.method private native _setEmbedSubDisplayFixed(I)V
.end method

.method private native _setEnhancedSDR(I)V
.end method

.method private native _setFormat3d(IF)Z
.end method

.method private native _setHdmiRange(I)V
.end method

.method private native _setHdrSaturation(I)V
.end method

.method private native _setHdrtoSDRgma(I)V
.end method

.method private native _setHue(I)V
.end method

.method private native _setMaxCLLMaxFALLDisable(I)V
.end method

.method private native _setOSDWindow(Landroid/graphics/Rect;)Z
.end method

.method private native _setPeakLuminance(I)V
.end method

.method private native _setRescaleMode(I)Z
.end method

.method private native _setSaturation(I)V
.end method

.method private native _setShiftOffset3d(ZZI)Z
.end method

.method private native _setShiftOffset3dByPlane(ZZII)Z
.end method

.method private native _setTVtype(I)V
.end method

.method private native _setVODisplayRatioType(I)V
.end method

.method private native _setVideoBrightness(I)V
.end method

.method private native _setVideoContrast(I)V
.end method

.method private native _setVideoHue(I)V
.end method

.method private native _setVideoSaturation(I)V
.end method

.method private native _setZoomRect(Landroid/graphics/Rect;)Z
.end method

.method private getHWCV1Rect()Landroid/graphics/Rect;
    .locals 4

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->_getHWCV1Rect()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getHWCV1Rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtkVoutUtilManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x780

    const/16 v2, 0x438

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getNextZoomState()I
    .locals 4

    iget v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mZoomState:I

    add-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->getHWCV1Rect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getNextZoomState: mOriginV1Rect:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RtkVoutUtilManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getNextZoomState: mCurrV1Rect:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private getPrevZoomState()I
    .locals 4

    iget v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mZoomState:I

    add-int/lit8 v1, v0, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->getHWCV1Rect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getNextZoomState: mOriginV1Rect:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RtkVoutUtilManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getNextZoomState: mCurrV1Rect:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x4

    :cond_1
    return v1
.end method

.method private getZoomRect(I)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getZoomRect: mOriginV1Rect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtkVoutUtilManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getZoomRect: mCurrV1Rect:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v4

    iget-object v4, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x14

    sub-int/2addr p1, v4

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v4

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x14

    sub-int/2addr p1, v3

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v3, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v3, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x14

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x14

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    :goto_0
    div-int/lit8 v1, v1, 0xa

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x14

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x14

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x14

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x14

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    goto/16 :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getZoomRect: new V1 rect:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public applyVoutDisplayWindowSetup()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->_applyVoutDisplayWindowSetup()Z

    move-result v0

    return v0
.end method

.method public init()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->_init()Z

    move-result v0

    return v0
.end method

.method public isCVBSOn()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->_isCVBSOn()Z

    move-result v0

    return v0
.end method

.method public isHDRtv()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->_isHDRtv()Z

    move-result v0

    return v0
.end method

.method public isZooming()Z
    .locals 1

    iget v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mZoomState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveZoom(I)Z
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mZoomState:I

    const-string v2, "RtkVoutUtilManager"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->getHWCV1Rect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveZoom: mOriginV1Rect:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveZoom: mCurrV1Rect:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int v3, p1, v1

    iget-object v4, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ge v3, v4, :cond_1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    :goto_0
    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int p1, v4, p1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :pswitch_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, p1, v1

    iget-object v4, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v4

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :pswitch_2
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v3, p1, v1

    iget-object v4, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    :goto_1
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int p1, v4, p1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :pswitch_3
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p1, v1

    iget-object v4, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_4

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "current V1 rect:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "new V1 rect:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_6

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setZoomRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-ne v1, p1, :cond_5

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    const-string v0, "_setZoomRect() return false!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v1, p1

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextZoom()Z
    .locals 4

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->getNextZoomState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkVoutUtilManager;->getZoomRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setZoomRect(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    iput v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mZoomState:I

    iget-object v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const-string v0, "RtkVoutUtilManager"

    const-string v1, "_setZoomRect() return false!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public prevZoom()Z
    .locals 4

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->getPrevZoomState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkVoutUtilManager;->getZoomRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setZoomRect(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    iput v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mZoomState:I

    iget-object v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const-string v0, "RtkVoutUtilManager"

    const-string v1, "_setZoomRect() return false!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public resetZoom()Z
    .locals 3

    iget-object v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/realtek/hardware/RtkVoutUtilManager;->getHWCV1Rect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetZoom: mOriginV1Rect:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkVoutUtilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setZoomRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mZoomState:I

    iget-object v1, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mCurrV1Rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/realtek/hardware/RtkVoutUtilManager;->mOriginV1Rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const-string v2, "_setZoomRect() return false!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public set3dSub(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_set3dSub(I)Z

    move-result p1

    return p1
.end method

.method public set3dto2d(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_set3dto2d(I)Z

    move-result p1

    return p1
.end method

.method public setAspectRatio(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setAspectRatio(II)V

    return-void
.end method

.method public setBrightness(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setBrightness(I)V

    return-void
.end method

.method public setCVBSDisplayRatio(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setCVBSDisplayRatio(I)Z

    move-result p1

    return p1
.end method

.method public setCVBSOff(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setCVBSOff(I)V

    return-void
.end method

.method public setContrast(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setContrast(I)V

    return-void
.end method

.method public setCopyMode(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setCopyMode(II)V

    return-void
.end method

.method public setDisplayPosition(IIII)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setDisplayPosition(IIII)Z

    move-result p1

    return p1
.end method

.method public setDisplayRatio(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setDisplayRatio(I)Z

    move-result p1

    return p1
.end method

.method public setEmbedSubDisplayFixed(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setEmbedSubDisplayFixed(I)V

    return-void
.end method

.method public setEnhancedSDR(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setEnhancedSDR(I)V

    return-void
.end method

.method public setFormat3d(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/realtek/hardware/RtkVoutUtilManager;->setFormat3d(IF)Z

    move-result p1

    return p1
.end method

.method public setFormat3d(IF)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setFormat3d(IF)Z

    move-result p1

    return p1
.end method

.method public setHdmiRange(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setHdmiRange(I)V

    return-void
.end method

.method public setHdrSaturation(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setHdrSaturation(I)V

    return-void
.end method

.method public setHdrtoSDRgma(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setHdrtoSDRgma(I)V

    return-void
.end method

.method public setHue(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setHue(I)V

    return-void
.end method

.method public setMaxCLLMaxFALLDisable(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setMaxCLLMaxFALLDisable(I)V

    return-void
.end method

.method public setOSDWindow(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setOSDWindow(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setPeakLuminance(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setPeakLuminance(I)V

    return-void
.end method

.method public setRescaleMode(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setRescaleMode(I)Z

    move-result p1

    return p1
.end method

.method public setSaturation(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setSaturation(I)V

    return-void
.end method

.method public setShiftOffset3d(ZZI)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setShiftOffset3d(ZZI)Z

    move-result p1

    return p1
.end method

.method public setShiftOffset3dByPlane(ZZII)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setShiftOffset3dByPlane(ZZII)Z

    move-result p1

    return p1
.end method

.method public setTVtype(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setTVtype(I)V

    return-void
.end method

.method public setVODisplayRatioType(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setVODisplayRatioType(I)V

    return-void
.end method

.method public setVideoBrightness(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setVideoBrightness(I)V

    return-void
.end method

.method public setVideoContrast(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setVideoContrast(I)V

    return-void
.end method

.method public setVideoHue(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setVideoHue(I)V

    return-void
.end method

.method public setVideoSaturation(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkVoutUtilManager;->_setVideoSaturation(I)V

    return-void
.end method
