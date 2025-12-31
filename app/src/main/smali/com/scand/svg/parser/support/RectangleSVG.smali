.class public Lcom/scand/svg/parser/support/RectangleSVG;
.super Landroid/graphics/RectF;
.source "SourceFile"

# interfaces
.implements Lcom/scand/svg/parser/support/GraphElement;


# instance fields
.field public rx:F

.field public ry:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/scand/svg/parser/support/RectangleSVG;->rx:F

    iput p1, p0, Lcom/scand/svg/parser/support/RectangleSVG;->ry:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 2
    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput p5, p0, Lcom/scand/svg/parser/support/RectangleSVG;->rx:F

    iput p6, p0, Lcom/scand/svg/parser/support/RectangleSVG;->ry:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    iget v0, p0, Lcom/scand/svg/parser/support/RectangleSVG;->rx:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/scand/svg/parser/support/RectangleSVG;->ry:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0, v0, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final synthetic getStability()I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/os/Parcelable$-CC;->$default$getStability(Landroid/os/Parcelable;)I

    move-result v0

    return v0
.end method
