.class Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/PaintContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/PathGradientPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PathGradientContext"
.end annotation


# instance fields
.field protected final deviceBounds:Ljava/awt/Rectangle;

.field protected final gradientSteps:I

.field protected final hints:Ljava/awt/RenderingHints;

.field protected final pCtx:Ljava/awt/PaintContext;

.field raster:Ljava/awt/image/WritableRaster;

.field protected final shape:Ljava/awt/Shape;

.field final synthetic this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

.field protected final userBounds:Ljava/awt/geom/Rectangle2D;

.field protected final xform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/PathGradientPaint;Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    iput-object v1, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v6, v2}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/Shape;

    iput-object v2, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->shape:Ljava/awt/Shape;

    if-eqz v2, :cond_0

    move-object/from16 v3, p3

    iput-object v3, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    move-object/from16 v3, p4

    iput-object v3, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->userBounds:Ljava/awt/geom/Rectangle2D;

    move-object/from16 v3, p5

    iput-object v3, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->xform:Ljava/awt/geom/AffineTransform;

    iput-object v6, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {p0, v2}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->getGradientSteps(Ljava/awt/Shape;)I

    move-result v2

    iput v2, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->gradientSteps:I

    new-instance v8, Ljava/awt/geom/Point2D$Double;

    const-wide/16 v3, 0x0

    invoke-direct {v8, v3, v4, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    new-instance v9, Ljava/awt/geom/Point2D$Double;

    int-to-double v10, v2

    invoke-direct {v9, v10, v11, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    new-instance v3, Ljava/awt/LinearGradientPaint;

    iget-object v10, v1, Lorg/apache/poi/sl/draw/PathGradientPaint;->fractions:[F

    iget-object v11, v1, Lorg/apache/poi/sl/draw/PathGradientPaint;->colors:[Ljava/awt/Color;

    sget-object v12, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    sget-object v13, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    new-instance v14, Ljava/awt/geom/AffineTransform;

    invoke-direct {v14}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Ljava/awt/LinearGradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V

    new-instance v4, Ljava/awt/Rectangle;

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    new-instance v5, Ljava/awt/geom/AffineTransform;

    invoke-direct {v5}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v1, v3

    move-object/from16 v2, p2

    move-object v3, v4

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Ljava/awt/LinearGradientPaint;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->pCtx:Ljava/awt/PaintContext;

    return-void

    :cond_0
    new-instance v1, Ljava/awt/geom/IllegalPathStateException;

    const-string v2, "PathGradientPaint needs a shape to be set via the rendering hint Drawable.GRADIANT_SHAPE."

    invoke-direct {v1, v2}, Ljava/awt/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createRaster()V
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v1}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v2}, Ljava/awt/Rectangle;->getHeight()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->raster:Ljava/awt/image/WritableRaster;

    new-instance v1, Ljava/awt/image/BufferedImage;

    iget-object v2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->raster:Ljava/awt/image/WritableRaster;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v4, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setRenderingHints(Ljava/util/Map;)V

    iget-object v2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v2}, Ljava/awt/Rectangle;->getX()D

    move-result-wide v2

    neg-double v2, v2

    iget-object v5, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v5}, Ljava/awt/Rectangle;->getY()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v1, v2, v3, v5, v6}, Ljava/awt/Graphics2D;->translate(DD)V

    iget-object v2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->xform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    iget-object v2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->pCtx:Ljava/awt/PaintContext;

    iget v3, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->gradientSteps:I

    const/4 v5, 0x1

    invoke-interface {v2, v4, v4, v3, v5}, Ljava/awt/PaintContext;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v0

    new-array v3, v0, [I

    iget v6, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->gradientSteps:I

    sub-int/2addr v6, v5

    :goto_0
    if-ltz v6, :cond_1

    invoke-virtual {v2, v6, v4, v3}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    new-instance v7, Ljava/awt/Color;

    aget v8, v3, v4

    aget v9, v3, v5

    const/4 v10, 0x2

    aget v11, v3, v10

    invoke-direct {v7, v8, v9, v11}, Ljava/awt/Color;-><init>(III)V

    const/4 v8, 0x4

    if-ne v0, v8, :cond_0

    const/4 v8, 0x3

    aget v8, v3, v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    invoke-static {v10, v8}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    :cond_0
    new-instance v8, Ljava/awt/BasicStroke;

    add-int/lit8 v9, v6, 0x1

    int-to-float v9, v9

    iget-object v10, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

    iget v11, v10, Lorg/apache/poi/sl/draw/PathGradientPaint;->capStyle:I

    iget v10, v10, Lorg/apache/poi/sl/draw/PathGradientPaint;->joinStyle:I

    invoke-direct {v8, v9, v11, v10}, Ljava/awt/BasicStroke;-><init>(FII)V

    invoke-virtual {v1, v8}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    invoke-virtual {v1, v7}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    iget-object v7, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->shape:Ljava/awt/Shape;

    invoke-virtual {v1, v7}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->pCtx:Ljava/awt/PaintContext;

    invoke-interface {v0}, Ljava/awt/PaintContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    return-object v0
.end method

.method public getGradientSteps(Ljava/awt/Shape;)I
    .locals 7

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/awt/Rectangle;->getHeight()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    new-instance v3, Ljava/awt/BasicStroke;

    int-to-float v4, v2

    iget-object v5, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

    iget v6, v5, Lorg/apache/poi/sl/draw/PathGradientPaint;->capStyle:I

    iget v5, v5, Lorg/apache/poi/sl/draw/PathGradientPaint;->joinStyle:I

    invoke-direct {v3, v4, v6, v5}, Ljava/awt/BasicStroke;-><init>(FII)V

    new-instance v4, Ljava/awt/geom/Area;

    invoke-virtual {v3, p1}, Ljava/awt/BasicStroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v4}, Ljava/awt/geom/Area;->isSingular()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getRaster(IIII)Ljava/awt/image/Raster;
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->raster:Ljava/awt/image/WritableRaster;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->createRaster()V

    :cond_0
    invoke-virtual {v0, p3, p4}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v0

    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    int-to-double v2, p1

    int-to-double v4, p2

    int-to-double v6, p3

    int-to-double v8, p4

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iget-object p1, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v10, p1}, Ljava/awt/geom/Rectangle2D;->intersects(Ljava/awt/geom/Rectangle2D;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p1}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iget-object p2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-static {v10, p2, p1}, Ljava/awt/geom/Rectangle2D;->intersect(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide p2

    iget-object p4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {p4}, Ljava/awt/Rectangle;->getX()D

    move-result-wide v1

    sub-double/2addr p2, v1

    double-to-int v2, p2

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide p2

    iget-object p4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {p4}, Ljava/awt/Rectangle;->getY()D

    move-result-wide v3

    sub-double/2addr p2, v3

    double-to-int v3, p2

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide p2

    double-to-int p2, p2

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide p3

    double-to-int p3, p3

    iget-object v1, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->raster:Ljava/awt/image/WritableRaster;

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/WritableRaster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {v10}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-int v3, v1

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v1

    invoke-virtual {v10}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    sub-double/2addr v1, v4

    double-to-int v4, v1

    move-object v2, v0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    return-object v0
.end method
