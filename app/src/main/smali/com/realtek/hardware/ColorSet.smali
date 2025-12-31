.class public Lcom/realtek/hardware/ColorSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mColorDepth:I

.field mColorMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/realtek/hardware/ColorSet;->mColorMode:I

    iput v0, p0, Lcom/realtek/hardware/ColorSet;->mColorDepth:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/realtek/hardware/ColorSet;->mColorMode:I

    iput p2, p0, Lcom/realtek/hardware/ColorSet;->mColorDepth:I

    return-void
.end method


# virtual methods
.method public isValidate()Z
    .locals 3

    iget v0, p0, Lcom/realtek/hardware/ColorSet;->mColorMode:I

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/realtek/hardware/ColorSet;->mColorDepth:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
