.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

.field a:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->deleted:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->deleted:Ljava/lang/Boolean;

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
    .locals 27

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getDel()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getX()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getY()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getA()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_1

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v25

    sub-double v10, v4, v25

    sub-double v12, v2, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double v14, v14, v6

    mul-double v14, v14, v6

    mul-double v18, v16, v16

    add-double v18, v18, v14

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double v6, v6, v14

    div-double v18, v18, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v6

    add-double/2addr v12, v8

    div-double/2addr v10, v6

    add-double v10, v10, v25

    sub-double/2addr v4, v10

    sub-double v10, v2, v12

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    new-instance v1, Ljava/awt/geom/Arc2D$Double;

    sub-double v14, v25, v18

    mul-double v18, v18, v6

    cmpg-double v6, v8, v2

    if-gez v6, :cond_2

    const-wide v2, 0x4066800000000000L    # 180.0

    :goto_0
    move-wide/from16 v22, v2

    goto :goto_1

    :cond_2
    const-wide v2, -0x3f99800000000000L    # -180.0

    goto :goto_0

    :goto_1
    const/16 v24, 0x0

    const-wide v20, 0x4066800000000000L    # 180.0

    move-object v11, v1

    move-wide v12, v8

    invoke-direct/range {v11 .. v24}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    move-wide v11, v4

    move-wide v13, v8

    move-wide/from16 v15, v25

    invoke-static/range {v11 .. v16}, Ljava/awt/geom/AffineTransform;->getRotateInstance(DDD)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getDel()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    return-void
.end method
