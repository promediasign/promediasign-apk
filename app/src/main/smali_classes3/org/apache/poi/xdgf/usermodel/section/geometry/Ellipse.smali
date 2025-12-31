.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

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

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->x:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->y:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->a:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->b:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->c:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->d:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->deleted:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->deleted:Ljava/lang/Boolean;

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
    .locals 0

    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string p2, "Ellipse elements cannot be part of a path"

    invoke-direct {p1, p2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getDel()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getX()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getY()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getA()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getB()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getC()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getD()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double v12, v0, v4

    sub-double v14, v2, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    sub-double/2addr v8, v4

    sub-double/2addr v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    cmpl-double v10, v6, v2

    if-lez v10, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    sub-double v0, v4, v0

    div-double/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    rem-double v2, v0, v2

    new-instance v0, Ljava/awt/geom/Ellipse2D$Double;

    sub-double v15, v4, v12

    sub-double v17, v6, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v19, v12, v10

    mul-double v21, v8, v10

    move-object v14, v0

    invoke-direct/range {v14 .. v22}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    new-instance v8, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v8, v0}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    invoke-virtual {v8, v0}, Ljava/awt/geom/Path2D$Double;->transform(Ljava/awt/geom/AffineTransform;)V

    return-object v8
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    return-void
.end method
