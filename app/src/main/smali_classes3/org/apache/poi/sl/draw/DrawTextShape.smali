.class public Lorg/apache/poi/sl/draw/DrawTextShape;
.super Lorg/apache/poi/sl/draw/DrawSimpleShape;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/TextShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;-><init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    return-void
.end method


# virtual methods
.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 18

    move-object/from16 v6, p1

    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/apache/poi/sl/draw/DrawFactory;->fixFonts(Ljava/awt/Graphics2D;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v3

    iget-wide v7, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    add-double/2addr v3, v7

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v9

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result v5

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipHorizontal()Z

    move-result v10

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shape;->getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;

    move-result-object v11

    :goto_0
    instance-of v12, v11, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    if-eqz v12, :cond_0

    check-cast v11, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result v12

    xor-int/2addr v5, v12

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipHorizontal()Z

    move-result v12

    xor-int/2addr v10, v12

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;

    move-result-object v11

    goto :goto_0

    :cond_0
    xor-int/2addr v5, v10

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v10

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v12

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v14

    add-double/2addr v14, v10

    invoke-virtual {v6, v14, v15, v12, v13}, Ljava/awt/Graphics2D;->translate(DD)V

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v6, v14, v15, v3, v4}, Ljava/awt/Graphics2D;->scale(DD)V

    neg-double v3, v10

    neg-double v10, v12

    invoke-virtual {v6, v3, v4, v10, v11}, Ljava/awt/Graphics2D;->translate(DD)V

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v3

    :goto_1
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextRotation()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmpl-double v12, v4, v10

    if-eqz v12, :cond_2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v10

    invoke-virtual {v6, v4, v5, v10, v11}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/awt/Graphics2D;->rotate(D)V

    neg-double v3, v4

    neg-double v10, v10

    invoke-virtual {v6, v3, v4, v10, v11}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_2
    sget-object v3, Lorg/apache/poi/sl/draw/DrawTextShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$VerticalAlignment:[I

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget-wide v2, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    add-double/2addr v7, v2

    move-wide v4, v7

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v12

    sub-double/2addr v12, v3

    iget-wide v3, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    sub-double/2addr v12, v3

    iget-wide v14, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    sub-double/2addr v12, v14

    div-double/2addr v12, v10

    add-double/2addr v12, v3

    :goto_2
    add-double/2addr v12, v7

    move-wide v4, v12

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v12

    sub-double/2addr v12, v3

    iget-wide v2, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    sub-double/2addr v12, v2

    goto :goto_2

    :goto_3
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    if-eq v0, v2, :cond_5

    sget-object v3, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL_270:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    if-ne v0, v3, :cond_7

    :cond_5
    if-ne v0, v2, :cond_6

    const-wide v2, 0x4056800000000000L    # 90.0

    goto :goto_4

    :cond_6
    const-wide v2, 0x4070e00000000000L    # 270.0

    :goto_4
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v7

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v12

    invoke-virtual {v6, v7, v8, v12, v13}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/awt/Graphics2D;->rotate(D)V

    neg-double v2, v7

    neg-double v7, v12

    invoke-virtual {v6, v2, v3, v7, v8}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    sub-double/2addr v2, v0

    div-double/2addr v2, v10

    neg-double v0, v2

    invoke-virtual {v6, v2, v3, v0, v1}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/sl/draw/DrawTextShape;->drawParagraphs(Ljava/awt/Graphics2D;DD)D

    invoke-virtual {v6, v9}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public drawParagraphs(Ljava/awt/Graphics2D;DD)D
    .locals 17

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v5, p4

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-virtual {v1, v9}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextParagraph;)Lorg/apache/poi/sl/draw/DrawTextParagraph;

    move-result-object v10

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v12

    if-nez v12, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getAutoNumberingStartAt()Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_1
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v12, v7, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, -0x1

    :cond_3
    :goto_2
    invoke-virtual {v10, v7}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->setAutoNumberingIdx(I)V

    invoke-virtual {v10, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->breakText(Ljava/awt/Graphics2D;)V

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getFirstLineLeading()F

    move-result v8

    float-to-double v3, v8

    :goto_3
    add-double/2addr v5, v3

    :goto_4
    move-wide/from16 v3, p2

    goto :goto_5

    :cond_4
    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getSpaceBefore()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    cmpl-double v4, v15, v13

    if-lez v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double v3, v3, v11

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getFirstLineHeight()F

    move-result v8

    float-to-double v11, v8

    mul-double v3, v3, v11

    add-double/2addr v5, v3

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    goto :goto_3

    :goto_5
    invoke-virtual {v10, v3, v4, v5, v6}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->setPosition(DD)V

    invoke-virtual {v10, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->draw(Ljava/awt/Graphics2D;)V

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getY()D

    move-result-wide v11

    add-double/2addr v11, v5

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getSpaceAfter()Ljava/lang/Double;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v6, v8, v13

    if-lez v6, :cond_8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double v5, v5, v8

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getLastLineHeight()F

    move-result v8

    float-to-double v8, v8

    mul-double v5, v5, v8

    add-double/2addr v5, v11

    goto :goto_6

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    neg-double v5, v5

    add-double/2addr v11, v5

    :cond_9
    move-wide v5, v11

    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_a
    sub-double v5, v5, p4

    return-wide v5
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/TextShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "*+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "**+",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            ">;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextShape;

    return-object v0
.end method

.method public getTextHeight()D
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTextHeight(Ljava/awt/Graphics2D;)D
    .locals 8

    .line 2
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/awt/Graphics2D;->addRenderingHints(Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    :cond_0
    invoke-static {v3}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/apache/poi/sl/draw/DrawFactory;->fixFonts(Ljava/awt/Graphics2D;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/sl/draw/DrawTextShape;->drawParagraphs(Ljava/awt/Graphics2D;DD)D

    move-result-wide v0

    return-wide v0
.end method
