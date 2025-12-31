.class public Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private focusX:F

.field private focusY:F

.field private scale:F

.field private scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->scale:F

    iput p2, p0, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->focusX:F

    iput p3, p0, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->focusY:F

    iput-object p4, p0, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method


# virtual methods
.method public getFocusX()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->focusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->focusY:F

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->scale:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method
