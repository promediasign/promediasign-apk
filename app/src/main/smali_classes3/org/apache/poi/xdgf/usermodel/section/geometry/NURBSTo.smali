.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field c:Ljava/lang/Double;

.field d:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field e:Ljava/lang/String;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->x:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->y:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->a:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->b:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->c:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->d:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->deleted:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->deleted:Ljava/lang/Boolean;

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object p1

    array-length v1, p1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    aget-object p1, p1, v1

    throw v0
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NURBS("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/16 v4, 0x8

    if-lt v2, v4, :cond_5

    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getX()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getY()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getA()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getB()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getC()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getD()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const/4 v2, 0x0

    aget-object v16, v1, v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    move-wide/from16 v17, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aget-object v16, v1, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v16, 0x2

    aget-object v16, v1, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v19, 0x3

    aget-object v19, v1, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    if-nez v16, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    goto :goto_0

    :cond_1
    move-wide/from16 v22, v20

    :goto_0
    if-nez v19, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    :cond_2
    new-instance v3, Lcom/graphbuilder/curve/ControlPath;

    invoke-direct {v3}, Lcom/graphbuilder/curve/ControlPath;-><init>()V

    move/from16 v19, v2

    new-instance v2, Lcom/graphbuilder/curve/ValueVector;

    invoke-direct {v2}, Lcom/graphbuilder/curve/ValueVector;-><init>()V

    move-wide/from16 v24, v6

    new-instance v6, Lcom/graphbuilder/curve/ValueVector;

    invoke-direct {v6}, Lcom/graphbuilder/curve/ValueVector;-><init>()V

    invoke-virtual {v2, v12, v13}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    invoke-virtual {v6, v14, v15}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v12

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    array-length v0, v1

    add-int/lit8 v0, v0, -0x4

    div-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    mul-int/lit8 v12, v7, 0x4

    add-int/lit8 v13, v12, 0x4

    aget-object v13, v1, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    add-int/lit8 v15, v12, 0x5

    aget-object v15, v1, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    add-int/lit8 v15, v12, 0x6

    aget-object v15, v1, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v28, v10

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    add-int/lit8 v12, v12, 0x7

    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move/from16 p2, v0

    move-object v15, v1

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double v13, v13, v22

    move-wide/from16 v30, v4

    mul-double v4, v26, v20

    invoke-static {v13, v14, v4, v5}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    invoke-virtual {v2, v10, v11}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    invoke-virtual {v6, v0, v1}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p2

    move-object v1, v15

    move-wide/from16 v10, v28

    move-wide/from16 v4, v30

    goto :goto_1

    :cond_3
    move-wide/from16 v30, v4

    move-wide/from16 v28, v10

    invoke-virtual {v2, v8, v9}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    move-wide/from16 v0, v17

    move-wide/from16 v4, v24

    invoke-static {v0, v1, v4, v5}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    move/from16 v0, v19

    invoke-static {v3, v2, v6, v0}, Lorg/apache/poi/xdgf/geom/SplineRenderer;->createNurbsSpline(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/ValueVector;Lcom/graphbuilder/curve/ValueVector;I)Lcom/graphbuilder/curve/ShapeMultiPath;

    move-result-object v0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    return-void

    :cond_4
    move-object v15, v1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid NURBS formula -- need 4 + n*4 arguments, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v15

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Invalid NURBS formula (not enough arguments)"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v2, "Invalid NURBS formula: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getDel()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->e:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    return-void
.end method
