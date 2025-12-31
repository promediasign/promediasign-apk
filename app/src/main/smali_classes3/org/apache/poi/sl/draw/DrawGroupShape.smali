.class public Lorg/apache/poi/sl/draw/DrawGroupShape;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/GroupShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawGroupShape;->getShape()Lorg/apache/poi/sl/usermodel/GroupShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/GroupShape;->getInteriorAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawGroupShape;->getShape()Lorg/apache/poi/sl/usermodel/GroupShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/AffineTransform;

    new-instance v3, Ljava/awt/geom/AffineTransform;

    invoke-direct {v3, v2}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    cmpl-double v10, v4, v8

    if-nez v10, :cond_0

    move-wide v4, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v10

    div-double/2addr v4, v10

    :goto_0
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v10

    cmpl-double v12, v10, v8

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    div-double/2addr v6, v8

    :goto_1
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v8

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v10

    invoke-virtual {v2, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v2, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {v2, v4, v5, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawGroupShape;->getShape()Lorg/apache/poi/sl/usermodel/GroupShape;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/sl/usermodel/Shape;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/sl/draw/Drawable;->GSAVE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v6, v7}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/poi/sl/draw/Drawable;->applyTransform(Ljava/awt/Graphics2D;)V

    invoke-interface {v4, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    invoke-virtual {p1, v5}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    sget-object v4, Lorg/apache/poi/sl/draw/Drawable;->GRESTORE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v4, v7}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/GroupShape;

    return-object v0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawGroupShape;->getShape()Lorg/apache/poi/sl/usermodel/GroupShape;

    move-result-object v0

    return-object v0
.end method
