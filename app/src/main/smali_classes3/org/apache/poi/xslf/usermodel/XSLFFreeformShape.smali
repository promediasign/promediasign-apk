.class public Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/FreeformShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;",
        "Lorg/apache/poi/sl/usermodel/FreeformShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method public static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    .locals 5

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewNvSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Freeform "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    int-to-long v3, p0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;

    move-result-object v1

    const-string v2, "r"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setR(Ljava/lang/Object;)V

    const-string v2, "b"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setB(Ljava/lang/Object;)V

    const-string v2, "t"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setT(Ljava/lang/Object;)V

    const-string v2, "l"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setL(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 28

    new-instance v13, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v13}, Ljava/awt/geom/Path2D$Double;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->getPathArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object v15

    array-length v11, v15

    const/4 v12, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_7

    aget-object v0, v15, v9

    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getW()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    div-double v16, v1, v3

    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getH()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    div-double v18, v1, v3

    const-string v1, "*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v10

    array-length v7, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    aget-object v0, v10, v8

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    mul-double v1, v1, v16

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    mul-double v3, v3, v18

    double-to-float v0, v3

    float-to-double v3, v0

    invoke-virtual {v13, v1, v2, v3, v4}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    :goto_2
    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v13

    :goto_3
    const/16 v25, 0x0

    move v13, v11

    goto/16 :goto_4

    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-double v3, v0

    invoke-virtual {v13, v1, v2, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    invoke-interface {v0, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    mul-double v2, v2, v16

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v4

    mul-double v4, v4, v18

    double-to-float v1, v4

    float-to-double v4, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v20

    move-object/from16 v22, v13

    mul-double v12, v20, v16

    double-to-float v1, v12

    float-to-double v12, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    mul-double v0, v0, v18

    double-to-float v0, v0

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v22

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v12

    move v13, v7

    move/from16 v24, v8

    move-wide/from16 v7, v20

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Path2D$Double;->quadTo(DDDD)V

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v13

    goto/16 :goto_3

    :cond_3
    move/from16 v24, v8

    move-object/from16 v22, v13

    move v13, v7

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    const/4 v12, 0x0

    invoke-interface {v0, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    mul-double v3, v3, v16

    double-to-float v3, v3

    float-to-double v3, v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v5

    mul-double v5, v5, v18

    double-to-float v1, v5

    float-to-double v5, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v7

    mul-double v7, v7, v16

    double-to-float v1, v7

    float-to-double v7, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    mul-double v1, v1, v18

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v20

    move/from16 v23, v13

    mul-double v12, v20, v16

    double-to-float v12, v12

    float-to-double v12, v12

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v20

    move-wide/from16 v26, v1

    mul-double v0, v20, v18

    double-to-float v0, v0

    float-to-double v1, v0

    move-object/from16 v0, v22

    move-wide/from16 v20, v26

    move-wide/from16 v26, v1

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide/from16 v7, v20

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-wide v9, v12

    move v13, v11

    const/16 v25, 0x0

    move-wide/from16 v11, v26

    invoke-virtual/range {v0 .. v12}, Ljava/awt/geom/Path2D$Double;->curveTo(DDDDDD)V

    goto :goto_4

    :cond_4
    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v13

    const/16 v25, 0x0

    move v13, v11

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    if-eqz v0, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Path2D$Double;->closePath()V

    :cond_5
    :goto_4
    add-int/lit8 v8, v24, 0x1

    move v11, v13

    move/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v13, v22

    move/from16 v7, v23

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_6
    move/from16 v20, v9

    move-object/from16 v22, v13

    const/16 v25, 0x0

    move v13, v11

    add-int/lit8 v9, v20, 0x1

    move-object/from16 v13, v22

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v22, v13

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    new-instance v1, Ljava/awt/geom/Path2D$Double;

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    return-object v1
.end method

.method public setPath(Ljava/awt/geom/Path2D$Double;)I
    .locals 16

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getX()D

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getY()D

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    invoke-static {v6, v7}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    new-instance v7, Ljava/awt/geom/AffineTransform;

    .line 29
    .line 30
    invoke-direct {v7}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 31
    .line 32
    .line 33
    move-object/from16 v8, p1

    .line 34
    .line 35
    invoke-virtual {v8, v7}, Ljava/awt/geom/Path2D$Double;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    invoke-static {v8, v9}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    int-to-long v8, v8

    .line 48
    invoke-interface {v3, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setH(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    invoke-static {v8, v9}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    int-to-long v8, v8

    .line 60
    invoke-interface {v3, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setW(J)V

    .line 61
    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x0

    .line 65
    :goto_0
    invoke-interface {v7}, Ljava/awt/geom/PathIterator;->isDone()Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-nez v10, :cond_5

    .line 70
    .line 71
    const/4 v10, 0x6

    .line 72
    new-array v10, v10, [D

    .line 73
    .line 74
    invoke-interface {v7, v10}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-eqz v11, :cond_4

    .line 79
    .line 80
    if-eq v11, v2, :cond_3

    .line 81
    .line 82
    if-eq v11, v0, :cond_2

    .line 83
    .line 84
    const/4 v12, 0x4

    .line 85
    if-eq v11, v1, :cond_1

    .line 86
    .line 87
    if-ne v11, v12, :cond_0

    .line 88
    .line 89
    add-int/2addr v9, v2

    .line 90
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewClose()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    .line 91
    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    const-string v1, "Unrecognized path segment type: "

    .line 98
    .line 99
    invoke-static {v11, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewCubicBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    aget-wide v14, v10, v8

    .line 116
    .line 117
    invoke-static {v14, v15}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    sub-int/2addr v14, v5

    .line 122
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    aget-wide v14, v10, v2

    .line 130
    .line 131
    invoke-static {v14, v15}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    sub-int/2addr v14, v6

    .line 136
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    aget-wide v14, v10, v0

    .line 148
    .line 149
    invoke-static {v14, v15}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    sub-int/2addr v14, v5

    .line 154
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    aget-wide v14, v10, v1

    .line 162
    .line 163
    invoke-static {v14, v15}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    sub-int/2addr v14, v6

    .line 168
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    aget-wide v12, v10, v12

    .line 180
    .line 181
    invoke-static {v12, v13}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    sub-int/2addr v12, v5

    .line 186
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    invoke-interface {v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    const/4 v12, 0x5

    .line 194
    aget-wide v12, v10, v12

    .line 195
    .line 196
    invoke-static {v12, v13}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    sub-int/2addr v10, v6

    .line 201
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    invoke-interface {v11, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    add-int/2addr v9, v1

    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_2
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewQuadBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    aget-wide v13, v10, v8

    .line 220
    .line 221
    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    sub-int/2addr v13, v5

    .line 226
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    invoke-interface {v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    aget-wide v13, v10, v2

    .line 234
    .line 235
    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    sub-int/2addr v13, v6

    .line 240
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    invoke-interface {v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 248
    .line 249
    .line 250
    move-result-object v11

    .line 251
    aget-wide v12, v10, v0

    .line 252
    .line 253
    invoke-static {v12, v13}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    sub-int/2addr v12, v5

    .line 258
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    invoke-interface {v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    aget-wide v12, v10, v1

    .line 266
    .line 267
    invoke-static {v12, v13}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    sub-int/2addr v10, v6

    .line 272
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    invoke-interface {v11, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    add-int/2addr v9, v0

    .line 280
    goto :goto_2

    .line 281
    :cond_3
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewLnTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    aget-wide v12, v10, v8

    .line 290
    .line 291
    invoke-static {v12, v13}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 292
    .line 293
    .line 294
    move-result v12

    .line 295
    sub-int/2addr v12, v5

    .line 296
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    invoke-interface {v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    aget-wide v12, v10, v2

    .line 304
    .line 305
    :goto_1
    invoke-static {v12, v13}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    sub-int/2addr v10, v6

    .line 310
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    invoke-interface {v11, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    add-int/2addr v9, v2

    .line 318
    goto :goto_2

    .line 319
    :cond_4
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewMoveTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 324
    .line 325
    .line 326
    move-result-object v11

    .line 327
    aget-wide v12, v10, v8

    .line 328
    .line 329
    invoke-static {v12, v13}, Lorg/apache/poi/util/Units;->toEMU(D)I

    .line 330
    .line 331
    .line 332
    move-result v12

    .line 333
    sub-int/2addr v12, v5

    .line 334
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v12

    .line 338
    invoke-interface {v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    aget-wide v12, v10, v2

    .line 342
    .line 343
    goto :goto_1

    .line 344
    :goto_2
    invoke-interface {v7}, Ljava/awt/geom/PathIterator;->next()V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    .line 354
    .line 355
    if-nez v1, :cond_6

    .line 356
    .line 357
    const/4 v0, -0x1

    .line 358
    return v0

    .line 359
    :cond_6
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    .line 360
    .line 361
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    new-array v1, v2, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    .line 370
    .line 371
    aput-object v3, v1, v8

    .line 372
    .line 373
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->setPathArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    .line 374
    .line 375
    .line 376
    move-object/from16 v0, p0

    .line 377
    .line 378
    invoke-virtual {v0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 379
    .line 380
    .line 381
    return v9
.end method
