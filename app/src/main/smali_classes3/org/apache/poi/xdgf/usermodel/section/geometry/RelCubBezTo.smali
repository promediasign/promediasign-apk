.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

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

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->x:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->y:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->a:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->b:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->c:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->d:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->deleted:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->deleted:Ljava/lang/Boolean;

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
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getA()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v7, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getB()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v9, v4, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getC()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v11, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getD()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v13, v4, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getX()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v15, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getY()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double v17, v0, v2

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v18}, Ljava/awt/geom/Path2D$Double;->curveTo(DDDDDD)V

    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getDel()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    return-void
.end method
