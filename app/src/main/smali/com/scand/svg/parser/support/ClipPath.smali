.class public Lcom/scand/svg/parser/support/ClipPath;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/support/ClipPath;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public addElement(Lcom/scand/svg/parser/support/EllipseSVG;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scand/svg/parser/support/ClipPath;->mPath:Landroid/graphics/Path;

    iget-object p1, p1, Lcom/scand/svg/parser/support/EllipseSVG;->ellipse:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addElement(Lcom/scand/svg/parser/support/LineSVG;)V
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p1, Lcom/scand/svg/parser/support/LineSVG;->x1:F

    iget v2, p1, Lcom/scand/svg/parser/support/LineSVG;->y1:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p1, Lcom/scand/svg/parser/support/LineSVG;->x2:F

    iget p1, p1, Lcom/scand/svg/parser/support/LineSVG;->y2:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/scand/svg/parser/support/ClipPath;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public addElement(Lcom/scand/svg/parser/support/PathExt;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/scand/svg/parser/support/ClipPath;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public addElement(Lcom/scand/svg/parser/support/RectangleSVG;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/scand/svg/parser/support/ClipPath;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/ClipPath;->mPath:Landroid/graphics/Path;

    return-object v0
.end method
