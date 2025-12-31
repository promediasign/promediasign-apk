.class public Lcom/realtek/hardware/OutputFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m3DFormat:I

.field mColor:I

.field mColorDepth:I

.field mFreqShift:I

.field mHDR:I

.field mMode:I

.field mVIC:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/realtek/hardware/OutputFormat;->mVIC:I

    iput p2, p0, Lcom/realtek/hardware/OutputFormat;->mFreqShift:I

    iput p3, p0, Lcom/realtek/hardware/OutputFormat;->mColor:I

    iput p4, p0, Lcom/realtek/hardware/OutputFormat;->mColorDepth:I

    iput p5, p0, Lcom/realtek/hardware/OutputFormat;->m3DFormat:I

    iput p6, p0, Lcom/realtek/hardware/OutputFormat;->mHDR:I

    return-void
.end method
