.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

.field a:Ljava/lang/String;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->x:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->y:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->deleted:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->deleted:Ljava/lang/Boolean;

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
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->getDel()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string p2, "Polyline support not implemented"

    invoke-direct {p1, p2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->getDel()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    return-void
.end method
