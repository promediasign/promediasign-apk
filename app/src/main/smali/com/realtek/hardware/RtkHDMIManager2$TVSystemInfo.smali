.class Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TVSystemInfo"
.end annotation


# instance fields
.field mFps:I

.field mFreqShift:I

.field mHeight:I

.field mProgress:Z

.field mSettingValue:I

.field mVIC:I

.field mVideoStandard:I

.field mVideoSystem:I

.field mWideScreen:I

.field mWidth:I


# direct methods
.method public constructor <init>(IIIIIZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mSettingValue:I

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    iput p3, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFreqShift:I

    iput p4, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mWidth:I

    iput p5, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mHeight:I

    iput-boolean p6, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mProgress:Z

    iput p7, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFps:I

    iput p8, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVideoSystem:I

    iput p6, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVideoStandard:I

    iput p9, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mWideScreen:I

    return-void
.end method


# virtual methods
.method public ranking()I
    .locals 4

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIManager2;->access$900(I)Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFreqShift:I

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mWidth:I

    const/16 v2, 0x1000

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mHeight:I

    const/16 v3, 0x870

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mProgress:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mHeight:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    :goto_0
    mul-int v0, v0, v1

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFps:I

    mul-int v0, v0, v1

    return v0
.end method
