.class public Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIRxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoConfig"
.end annotation


# instance fields
.field public bitrate:I

.field public height:I

.field public mFps:I

.field public width:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->mFps:I

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->width:I

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->height:I

    iput p3, p0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->bitrate:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->width:I

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->height:I

    iput p3, p0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->bitrate:I

    iput p4, p0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->mFps:I

    return-void
.end method
