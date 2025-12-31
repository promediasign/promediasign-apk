.class public Lorg/apache/poi/sl/draw/DrawTableShape;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "SourceFile"


# static fields
.field public static final borderSize:I = 0x2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/TableShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TableShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-void
.end method

.method private static varargs setEdges(Lorg/apache/poi/sl/usermodel/TableCell;[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TableCell<",
            "**>;[",
            "Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    array-length v4, p2

    if-nez v4, :cond_1

    invoke-interface {p0, v3}, Lorg/apache/poi/sl/usermodel/TableCell;->removeBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)V

    goto :goto_3

    :cond_1
    array-length v4, p2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, p2, v5

    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {p0, v3, v6, v7}, Lorg/apache/poi/sl/usermodel/TableCell;->setBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;D)V

    goto :goto_2

    :cond_2
    instance-of v7, v6, Ljava/awt/Color;

    if-eqz v7, :cond_3

    check-cast v6, Ljava/awt/Color;

    invoke-interface {p0, v3, v6}, Lorg/apache/poi/sl/usermodel/TableCell;->setBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Ljava/awt/Color;)V

    goto :goto_2

    :cond_3
    instance-of v7, v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    if-eqz v7, :cond_4

    check-cast v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-interface {p0, v3, v6}, Lorg/apache/poi/sl/usermodel/TableCell;->setBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    goto :goto_2

    :cond_4
    instance-of v7, v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    if-eqz v7, :cond_5

    check-cast v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    invoke-interface {p0, v3, v6}, Lorg/apache/poi/sl/usermodel/TableCell;->setBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->getGroupShape(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/Drawable;->applyTransform(Ljava/awt/Graphics2D;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;->applyTransform(Ljava/awt/Graphics2D;)V

    :goto_0
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 40

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->getGroupShape(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v3

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_7

    invoke-interface {v1, v6, v7}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Lorg/apache/poi/sl/usermodel/TableCell;->isMerged()Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-interface {v8}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-interface {v8}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    invoke-static {}, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->values()[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    invoke-interface {v8, v13}, Lorg/apache/poi/sl/usermodel/TableCell;->getBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object v14

    if-nez v14, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v14}, Lorg/apache/poi/sl/draw/DrawShape;->getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Ljava/awt/BasicStroke;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v14

    invoke-virtual {v2, v0, v14}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v20

    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v18

    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v14

    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v16

    sget-object v22, Lorg/apache/poi/sl/draw/DrawTableShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v22, v13

    const/4 v5, 0x2

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    if-eq v13, v5, :cond_5

    const/4 v5, 0x3

    if-eq v13, v5, :cond_4

    const/4 v5, 0x4

    if-eq v13, v5, :cond_3

    new-instance v5, Ljava/awt/geom/Line2D$Double;

    sub-double v32, v20, v22

    add-double v38, v18, v16

    add-double v20, v20, v14

    add-double v36, v20, v22

    move-object/from16 v31, v5

    move-wide/from16 v34, v38

    invoke-direct/range {v31 .. v39}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/awt/geom/Line2D$Double;

    sub-double v16, v20, v22

    add-double v20, v20, v14

    add-double v27, v20, v22

    move-object/from16 v22, v5

    move-wide/from16 v23, v16

    move-wide/from16 v25, v18

    move-wide/from16 v29, v18

    invoke-direct/range {v22 .. v30}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/awt/geom/Line2D$Double;

    add-double v27, v20, v14

    add-double v16, v18, v16

    add-double v29, v16, v22

    move-object/from16 v22, v5

    move-wide/from16 v23, v27

    move-wide/from16 v25, v18

    invoke-direct/range {v22 .. v30}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    goto :goto_3

    :cond_5
    new-instance v5, Ljava/awt/geom/Line2D$Double;

    add-double v16, v18, v16

    add-double v22, v16, v22

    move-object v15, v5

    move-wide/from16 v16, v20

    invoke-direct/range {v15 .. v23}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    :goto_3
    invoke-virtual {v0, v5}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->drawContent(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 8

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->getGroupShape(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/Drawable;->drawContent(Ljava/awt/Graphics2D;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    invoke-interface {v0, v5, v6}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v7}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;->drawContent(Ljava/awt/Graphics2D;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getGroupShape(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    instance-of v0, v0, Lorg/apache/poi/sl/usermodel/GroupShape;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-virtual {p1, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/GroupShape;)Lorg/apache/poi/sl/draw/DrawGroupShape;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/TableShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/TableShape<",
            "**>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/TableShape;

    return-object v0
.end method

.method public varargs setAllBorders([Ljava/lang/Object;)V
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    sget-object v4, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->top:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    sget-object v6, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->left:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x0

    aput-object v6, v3, v4

    const/4 v7, 0x3

    aput-object v6, v3, v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_2

    add-int/lit8 v10, v2, -0x1

    if-ne v9, v10, :cond_0

    sget-object v10, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->right:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_2

    :cond_0
    move-object v10, v6

    :goto_2
    aput-object v10, v3, v4

    add-int/lit8 v10, v1, -0x1

    if-ne v8, v10, :cond_1

    sget-object v10, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->bottom:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_3

    :cond_1
    move-object v10, v6

    :goto_3
    aput-object v10, v3, v7

    invoke-interface {v0, v8, v9}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v10

    invoke-static {v10, v3, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->setEdges(Lorg/apache/poi/sl/usermodel/TableCell;[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;[Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public varargs setInsideBorders([Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    array-length v2, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_3

    const/4 v7, 0x0

    if-lez v6, :cond_1

    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_1

    sget-object v8, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->right:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_2

    :cond_1
    move-object v8, v7

    :goto_2
    if-lez v5, :cond_2

    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_2

    sget-object v7, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->bottom:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    :cond_2
    const/4 v9, 0x2

    new-array v9, v9, [Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    aput-object v8, v9, v0

    aput-object v7, v9, v1

    invoke-interface {v2, v5, v6}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v7

    invoke-static {v7, v9, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->setEdges(Lorg/apache/poi/sl/usermodel/TableCell;[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;[Ljava/lang/Object;)V

    add-int/2addr v6, v1

    goto :goto_1

    :cond_3
    add-int/2addr v5, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public varargs setOutsideBorders([Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    array-length v2, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_5

    const/4 v7, 0x0

    if-nez v6, :cond_1

    sget-object v8, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->left:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_2

    :cond_1
    move-object v8, v7

    :goto_2
    add-int/lit8 v9, v4, -0x1

    if-ne v6, v9, :cond_2

    sget-object v9, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->right:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_3

    :cond_2
    move-object v9, v7

    :goto_3
    if-nez v5, :cond_3

    sget-object v10, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->top:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_4

    :cond_3
    move-object v10, v7

    :goto_4
    add-int/lit8 v11, v3, -0x1

    if-ne v5, v11, :cond_4

    sget-object v7, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->bottom:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    :cond_4
    const/4 v11, 0x4

    new-array v11, v11, [Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    aput-object v8, v11, v0

    aput-object v9, v11, v1

    const/4 v8, 0x2

    aput-object v10, v11, v8

    const/4 v8, 0x3

    aput-object v7, v11, v8

    invoke-interface {v2, v5, v6}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v7

    invoke-static {v7, v11, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->setEdges(Lorg/apache/poi/sl/usermodel/TableCell;[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;[Ljava/lang/Object;)V

    add-int/2addr v6, v1

    goto :goto_1

    :cond_5
    add-int/2addr v5, v1

    goto :goto_0

    :cond_6
    return-void
.end method
