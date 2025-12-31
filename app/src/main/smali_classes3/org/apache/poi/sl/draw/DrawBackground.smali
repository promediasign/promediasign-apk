.class public Lorg/apache/poi/sl/draw/DrawBackground;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Background;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Background<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shape;->getSheet()Lorg/apache/poi/sl/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Sheet;->getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object v0

    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v0, Lorg/apache/poi/sl/draw/DrawBackground$1;

    invoke-direct {v0, p0, v10}, Lorg/apache/poi/sl/draw/DrawBackground$1;-><init>(Lorg/apache/poi/sl/draw/DrawBackground;Ljava/awt/geom/Rectangle2D;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawBackground;->getShape()Lorg/apache/poi/sl/usermodel/Background;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Background;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v0

    invoke-static {p1, v10}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    if-eqz v0, :cond_0

    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v2, v10}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    :cond_0
    return-void
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/Background;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Background<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/Background;

    return-object v0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawBackground;->getShape()Lorg/apache/poi/sl/usermodel/Background;

    move-result-object v0

    return-object v0
.end method
