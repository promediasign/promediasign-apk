.class public Lsk/mimac/slideshow/gui/click/ClickEllipse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/click/ClickShape;


# instance fields
.field private final left:F

.field private final rx2:F

.field private final ry2:F

.field private final top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsk/mimac/slideshow/gui/click/ClickEllipse;->left:F

    iput p2, p0, Lsk/mimac/slideshow/gui/click/ClickEllipse;->top:F

    mul-float p3, p3, p3

    iput p3, p0, Lsk/mimac/slideshow/gui/click/ClickEllipse;->rx2:F

    mul-float p4, p4, p4

    iput p4, p0, Lsk/mimac/slideshow/gui/click/ClickEllipse;->ry2:F

    return-void
.end method


# virtual methods
.method public isInside(FF)Z
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/click/ClickEllipse;->left:F

    sub-float/2addr p1, v0

    iget v0, p0, Lsk/mimac/slideshow/gui/click/ClickEllipse;->top:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    iget v0, p0, Lsk/mimac/slideshow/gui/click/ClickEllipse;->rx2:F

    div-float/2addr p1, v0

    mul-float p2, p2, p2

    iget v0, p0, Lsk/mimac/slideshow/gui/click/ClickEllipse;->ry2:F

    div-float/2addr p2, v0

    add-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
