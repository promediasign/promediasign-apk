.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# static fields
.field public static draw:I


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field c:Ljava/lang/Double;

.field d:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->x:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->y:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->a:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->b:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->c:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->d:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->deleted:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->deleted:Ljava/lang/Boolean;

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

.method public static computeSweep(DDD)D
    .locals 3

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v0

    rem-double/2addr p0, v0

    add-double/2addr p2, v0

    rem-double/2addr p2, v0

    add-double/2addr p4, v0

    rem-double/2addr p4, v0

    cmpg-double v2, p0, p2

    if-gez v2, :cond_1

    cmpg-double v2, p0, p4

    if-gez v2, :cond_0

    cmpg-double v2, p4, p2

    if-gez v2, :cond_0

    :goto_0
    sub-double/2addr p0, p2

    goto :goto_1

    :cond_0
    sub-double/2addr p0, p2

    add-double/2addr p0, v0

    goto :goto_1

    :cond_1
    cmpg-double v2, p2, p4

    if-gez v2, :cond_2

    cmpg-double v2, p4, p0

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    sub-double/2addr p0, p2

    sub-double/2addr v0, p0

    neg-double p0, v0

    :goto_1
    return-wide p0
.end method

.method public static createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V
    .locals 48

    move-wide/from16 v0, p8

    invoke-virtual/range {p12 .. p12}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    neg-double v7, v0

    invoke-static {v7, v8}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    const/4 v7, 0x6

    new-array v7, v7, [D

    const/4 v8, 0x0

    aput-wide v3, v7, v8

    const/4 v3, 0x1

    aput-wide v5, v7, v3

    const/4 v4, 0x2

    aput-wide p0, v7, v4

    const/4 v5, 0x3

    aput-wide p2, v7, v5

    const/4 v6, 0x4

    aput-wide p4, v7, v6

    const/4 v9, 0x5

    aput-wide p6, v7, v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object/from16 p0, v2

    move-object/from16 p1, v7

    move/from16 p2, v12

    move-object/from16 p3, v7

    move/from16 p4, v10

    move/from16 p5, v11

    invoke-virtual/range {p0 .. p5}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v10, v7, v8

    aget-wide v12, v7, v3

    aget-wide v3, v7, v4

    aget-wide v14, v7, v5

    aget-wide v5, v7, v6

    aget-wide v16, v7, v9

    mul-double v18, p10, p10

    sub-double v20, v10, v3

    add-double v22, v10, v3

    mul-double v22, v22, v20

    sub-double v24, v14, v16

    mul-double v22, v22, v24

    sub-double v26, v3, v5

    add-double v28, v3, v5

    mul-double v28, v28, v26

    sub-double v30, v12, v14

    mul-double v28, v28, v30

    sub-double v22, v22, v28

    mul-double v28, v18, v30

    mul-double v28, v28, v24

    sub-double v32, v12, v16

    mul-double v32, v32, v28

    add-double v32, v32, v22

    mul-double v24, v24, v20

    mul-double v30, v30, v26

    sub-double v22, v24, v30

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v8

    div-double v32, v32, v22

    mul-double v20, v20, v26

    sub-double v22, v10, v5

    mul-double v22, v22, v20

    div-double v22, v22, v18

    add-double v20, v12, v14

    mul-double v20, v20, v30

    add-double v20, v20, v22

    add-double v22, v14, v16

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    sub-double v30, v30, v24

    mul-double v30, v30, v8

    div-double v20, v20, v30

    sub-double v10, v10, v32

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    sub-double v12, v12, v20

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v24, v24, v18

    add-double v24, v24, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    div-double v22, v18, p10

    sub-double v16, v16, v20

    div-double v7, v16, v22

    sub-double v5, v5, v32

    div-double v5, v5, v18

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v28

    div-double v12, v12, v22

    div-double v10, v10, v18

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    sub-double v14, v14, v20

    div-double v14, v14, v22

    sub-double v3, v3, v32

    div-double v3, v3, v18

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v26

    move-wide/from16 v24, v5

    invoke-static/range {v24 .. v29}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->computeSweep(DDD)D

    move-result-wide v45

    new-instance v3, Ljava/awt/geom/Arc2D$Double;

    sub-double v35, v32, v18

    sub-double v37, v20, v22

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v39, v18, v7

    mul-double v41, v22, v7

    neg-double v4, v5

    const/16 v47, 0x0

    move-object/from16 v34, v3

    move-wide/from16 v43, v4

    invoke-direct/range {v34 .. v47}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    invoke-virtual {v2, v0, v1}, Ljava/awt/geom/AffineTransform;->setToRotation(D)V

    invoke-virtual {v2, v3}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    move-object/from16 v1, p12

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    return-void
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getDel()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getX()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getY()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getA()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getB()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getC()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getD()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object v12, p1

    invoke-static/range {v0 .. v12}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V

    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getDel()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    return-void
.end method
