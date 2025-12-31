.class public Lcom/scand/svg/parser/support/EllipseSVG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scand/svg/parser/support/GraphElement;


# instance fields
.field public bounds:Landroid/graphics/RectF;

.field public ellipse:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-float v0, p1, p3

    add-float v1, p2, p4

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/scand/svg/parser/support/EllipseSVG;->ellipse:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/scand/svg/parser/support/EllipseSVG;->bounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/EllipseSVG;->ellipse:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
