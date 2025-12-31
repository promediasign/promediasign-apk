.class Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkDPTxManager;
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

    iput p1, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mSettingValue:I

    iput p2, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mVIC:I

    iput p3, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mFreqShift:I

    iput p4, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mWidth:I

    iput p5, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mHeight:I

    iput-boolean p6, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mProgress:Z

    iput p7, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mFps:I

    iput p8, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mVideoSystem:I

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mVideoStandard:I

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iput p9, p0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mWideScreen:I

    return-void
.end method
