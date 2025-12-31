.class public Lcom/scand/svg/parser/support/LineSVG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scand/svg/parser/support/GraphElement;


# instance fields
.field public bounds:Landroid/graphics/RectF;

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scand/svg/parser/support/LineSVG;->x1:F

    iput p3, p0, Lcom/scand/svg/parser/support/LineSVG;->x2:F

    iput p2, p0, Lcom/scand/svg/parser/support/LineSVG;->y1:F

    iput p4, p0, Lcom/scand/svg/parser/support/LineSVG;->y2:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/scand/svg/parser/support/LineSVG;->bounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    iget v1, p0, Lcom/scand/svg/parser/support/LineSVG;->x1:F

    iget v2, p0, Lcom/scand/svg/parser/support/LineSVG;->y1:F

    iget v3, p0, Lcom/scand/svg/parser/support/LineSVG;->x2:F

    iget v4, p0, Lcom/scand/svg/parser/support/LineSVG;->y2:F

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
