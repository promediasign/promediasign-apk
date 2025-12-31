.class public Lsk/mimac/slideshow/gui/click/ClickRectangle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/click/ClickShape;


# instance fields
.field private final height:F

.field private final left:F

.field private final top:F

.field private final width:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsk/mimac/slideshow/gui/click/ClickRectangle;->left:F

    iput p2, p0, Lsk/mimac/slideshow/gui/click/ClickRectangle;->top:F

    iput p3, p0, Lsk/mimac/slideshow/gui/click/ClickRectangle;->width:F

    iput p4, p0, Lsk/mimac/slideshow/gui/click/ClickRectangle;->height:F

    return-void
.end method


# virtual methods
.method public isInside(FF)Z
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/gui/click/ClickRectangle;->left:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lsk/mimac/slideshow/gui/click/ClickRectangle;->width:F

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, p0, Lsk/mimac/slideshow/gui/click/ClickRectangle;->top:F

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lsk/mimac/slideshow/gui/click/ClickRectangle;->height:F

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
