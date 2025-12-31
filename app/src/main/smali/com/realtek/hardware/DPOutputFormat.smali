.class public Lcom/realtek/hardware/DPOutputFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDisplayMode:I

.field mVIC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/realtek/hardware/DPOutputFormat;->mVIC:I

    iput v0, p0, Lcom/realtek/hardware/DPOutputFormat;->mDisplayMode:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/realtek/hardware/DPOutputFormat;->mVIC:I

    iput p2, p0, Lcom/realtek/hardware/DPOutputFormat;->mDisplayMode:I

    return-void
.end method
