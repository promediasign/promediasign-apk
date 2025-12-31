.class public Lorg/apache/poi/sl/draw/DrawSheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field protected final sheet:Lorg/apache/poi/sl/usermodel/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Sheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    return-void
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public canDraw(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Sheet;->getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object v0

    new-instance v1, Ljava/awt/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v2, v2, v3}, Ljava/awt/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v2

    double-to-int v0, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/Sheet;->getFollowMasterGraphics()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/MasterSheet;)Lorg/apache/poi/sl/draw/DrawMasterSheet;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    :cond_0
    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/ShapeContainer;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/usermodel/Shape;

    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/sl/draw/DrawSheet;->canDraw(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/sl/draw/Drawable;->GSAVE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/poi/sl/draw/Drawable;->applyTransform(Ljava/awt/Graphics2D;)V

    invoke-interface {v2, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    invoke-virtual {p1, v3}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->GRESTORE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v2, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method
