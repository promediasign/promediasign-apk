.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
.super Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
.source "SourceFile"


# instance fields
.field protected _graphics:Ljava/awt/Graphics2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Graphics2D;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    return-void
.end method


# virtual methods
.method public drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getStroke()Ljava/awt/Stroke;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    :cond_0
    return-object v0
.end method

.method public drawText(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Header"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextBounds()Ljava/awt/geom/Rectangle2D$Double;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontSize()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/awt/Font;->deriveFont(F)Ljava/awt/Font;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontColor()Ljava/awt/Color;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->draw(Ljava/awt/Graphics2D;)V

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    :cond_1
    return-void
.end method

.method public setGraphics(Ljava/awt/Graphics2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    return-void
.end method

.method public visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V
    .locals 1

    iget-object p3, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p3}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p2}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawText(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1, p3}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method
