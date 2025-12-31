.class public Lcom/scand/svg/parser/support/ImageRefSVG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scand/svg/parser/support/GraphElement;


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bounds:Landroid/graphics/RectF;

.field public fake:Z

.field public keepAR:Z


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->keepAR:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->fake:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/RectF;

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->bounds:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->fake:Z

    return-void
.end method

.method public constructor <init>(FFFFZLandroid/graphics/Bitmap;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->keepAR:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->fake:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/RectF;

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->bounds:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->fake:Z

    iput-boolean p5, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->keepAR:Z

    iput-object p6, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(FFFFZZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->keepAR:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->fake:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->bitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->bounds:Landroid/graphics/RectF;

    iput-boolean p5, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->fake:Z

    iput-boolean p6, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->keepAR:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    iget-boolean v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->fake:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/scand/svg/parser/support/ImageRefSVG;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
