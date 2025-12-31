.class public Lorg/apache/poi/xdgf/usermodel/XDGFText;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/TextType;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextBounds()Ljava/awt/geom/Rectangle2D$Double;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v7}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v8}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v8

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-eqz v8, :cond_2

    iget-object v8, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v8}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v4

    move-object/from16 v16, v5

    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v9, v3, Ljava/awt/geom/Rectangle2D$Double;->x:D

    move-object v8, v4

    move-object/from16 v16, v5

    iget-wide v4, v3, Ljava/awt/geom/Rectangle2D$Double;->y:D

    invoke-virtual {v1, v9, v10, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-virtual {v1, v13, v14, v11, v12}, Ljava/awt/Graphics2D;->scale(DD)V

    iget-wide v4, v3, Ljava/awt/geom/Rectangle2D$Double;->height:D

    neg-double v4, v4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontMetrics()Ljava/awt/FontMetrics;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/awt/FontMetrics;->getMaxCharBounds(Ljava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    add-double/2addr v4, v9

    const-wide/16 v9, 0x0

    invoke-virtual {v1, v9, v10, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    :goto_1
    if-eqz v7, :cond_3

    iget-object v4, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v4}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v11, v12, v13, v14}, Ljava/awt/Graphics2D;->scale(DD)V

    iget-wide v4, v3, Ljava/awt/geom/Rectangle2D$Double;->width:D

    neg-double v4, v4

    invoke-virtual {v1, v4, v5, v9, v10}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_3
    iget-object v4, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v4}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtAngle()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v9, v11

    if-lez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/awt/Graphics2D;->rotate(D)V

    :cond_4
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v7, v4, :cond_7

    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5

    move-object v15, v6

    move-object/from16 v12, v16

    goto :goto_4

    :cond_5
    new-instance v11, Ljava/awt/font/TextLayout;

    move-object/from16 v12, v16

    invoke-direct {v11, v10, v12, v8}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->isLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v11, v1, v5, v9}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    move-object v15, v6

    goto :goto_3

    :cond_6
    iget-wide v13, v3, Ljava/awt/geom/Rectangle2D$Double;->width:D

    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v10

    move-object v15, v6

    float-to-double v5, v10

    sub-double/2addr v13, v5

    double-to-float v5, v13

    invoke-virtual {v11, v1, v5, v9}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    :goto_3
    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v5

    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->getLeading()F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v9, v5

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v16, v12

    move-object v6, v15

    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    move-object v5, v6

    invoke-virtual {v1, v5}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public getBoundsAsPath()Ljava/awt/geom/Path2D$Double;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextBounds()Ljava/awt/geom/Rectangle2D$Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D$Double;->getWidth()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D$Double;->getHeight()D

    move-result-wide v3

    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6, v5, v6}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    invoke-virtual {v0, v1, v2, v5, v6}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v0, v5, v6, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v0, v5, v6, v5, v6}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    return-object v0
.end method

.method public getTextBounds()Ljava/awt/geom/Rectangle2D$Double;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtPinX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtPinY()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v5}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinX()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v7}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinY()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v9, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v9}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtWidth()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    iget-object v9, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v9}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtHeight()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    sub-double v11, v1, v5

    sub-double v13, v3, v7

    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v1
.end method

.method public getTextCenter()Ljava/awt/geom/Point2D$Double;
    .locals 5

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinY()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
