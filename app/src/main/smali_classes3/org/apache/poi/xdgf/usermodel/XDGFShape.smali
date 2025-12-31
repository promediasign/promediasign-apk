.class public Lorg/apache/poi/xdgf/usermodel/XDGFShape;
.super Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.source "SourceFile"


# instance fields
.field _angle:Ljava/lang/Double;

.field _beginX:Ljava/lang/Double;

.field _beginY:Ljava/lang/Double;

.field _endX:Ljava/lang/Double;

.field _endY:Ljava/lang/Double;

.field _flipX:Ljava/lang/Boolean;

.field _flipY:Ljava/lang/Boolean;

.field _height:Ljava/lang/Double;

.field _locPinX:Ljava/lang/Double;

.field _locPinY:Ljava/lang/Double;

.field _master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

.field _masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

.field _parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

.field _parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

.field _pinX:Ljava/lang/Double;

.field _pinY:Ljava/lang/Double;

.field _rotationXAngle:Ljava/lang/Double;

.field _rotationYAngle:Ljava/lang/Double;

.field _rotationZAngle:Ljava/lang/Double;

.field _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation
.end field

.field _text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

.field _txtAngle:Ljava/lang/Double;

.field _txtHeight:Ljava/lang/Double;

.field _txtLocPinX:Ljava/lang/Double;

.field _txtLocPinY:Ljava/lang/Double;

.field _txtPinX:Ljava/lang/Double;

.field _txtPinY:Ljava/lang/Double;

.field _txtWidth:Ljava/lang/Double;

.field _width:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;-><init>(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p4}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    const/4 p4, 0x0

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinX:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinY:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_width:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_height:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinX:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinY:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginX:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginY:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endX:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endY:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_angle:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationXAngle:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationYAngle:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationZAngle:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipX:Ljava/lang/Boolean;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipY:Ljava/lang/Boolean;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinY:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtAngle:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iput-object p3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

    invoke-interface {p2}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getText()Lcom/microsoft/schemas/office/visio/x2012/main/TextType;

    invoke-interface {p2}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->isSetShapes()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->readProperties()V

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    invoke-interface {p2}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;

    throw p4
.end method


# virtual methods
.method public getAngle()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_angle:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getAngle()Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBeginX()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getBeginX()Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBeginY()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getBeginY()Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D$Double;
    .locals 10

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getBoundsAsPath()Ljava/awt/geom/Path2D$Double;
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4, v3, v4}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2, v5, v6, v7, v8}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2, v3, v4, v0, v1}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v2, v3, v4, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    return-object v2
.end method

.method public getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEndX()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getEndX()Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEndY()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getEndY()Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFlipX()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipX:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFlipY()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipY:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFontColor()Ljava/awt/Color;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontColor()Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryByIdx(J)Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    return-object p1
.end method

.method public getGeometrySections()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public getHeight()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_height:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Height not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getID()J
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    const/4 v0, 0x0

    throw v0
.end method

.method public getLineCap()Ljava/lang/Integer;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineCap()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineCap()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineCap()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLineColor()Ljava/awt/Color;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineColor()Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getLinePattern()Ljava/lang/Integer;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLinePattern()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLinePattern()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLinePattern()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLineWeight()Ljava/lang/Double;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineWeight()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineWeight()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineWeight()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getLocPinX()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinX()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "LocPinX not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getLocPinY()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinY()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "LocPinY not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    const/4 v0, 0x0

    throw v0
.end method

.method public getParentShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object v0
.end method

.method public getParentTransform()Ljava/awt/geom/AffineTransform;
    .locals 12

    new-instance v7, Ljava/awt/geom/AffineTransform;

    invoke-direct {v7}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinX()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinY()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getAngle()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v7, v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinX()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinY()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v7, v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v10, v3, v5

    if-lez v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object v0, v7

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v10

    invoke-virtual/range {v0 .. v6}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    :cond_0
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v7, v4, v5, v2, v3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v7, v10, v11, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v7, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v7, v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    :cond_2
    return-object v7
.end method

.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometrySections()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D$Double;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPinX()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinX()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "PinX not set!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getPinY()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinY()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "PinY not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getShapeType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    const/4 v0, 0x0

    throw v0
.end method

.method public getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    return-object v0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineWeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineCap()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Invalid line cap specified"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLinePattern()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xfe

    if-eq v5, v6, :cond_4

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x41f00000    # 30.0f

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x40400000    # 3.0f

    const/high16 v16, 0x40c00000    # 6.0f

    packed-switch v5, :pswitch_data_0

    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Invalid line pattern value"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v1, v4, [F

    aput v14, v1, v3

    :goto_1
    move-object v6, v1

    goto/16 :goto_3

    :pswitch_1
    new-array v5, v8, [F

    aput v7, v5, v3

    aput v16, v5, v4

    aput v10, v5, v1

    aput v16, v5, v13

    aput v10, v5, v12

    aput v16, v5, v9

    :goto_2
    move-object v6, v5

    goto/16 :goto_3

    :pswitch_2
    new-array v5, v12, [F

    aput v7, v5, v3

    aput v16, v5, v4

    aput v10, v5, v1

    aput v16, v5, v13

    goto :goto_2

    :pswitch_3
    new-array v5, v8, [F

    aput v14, v5, v3

    aput v16, v5, v4

    aput v10, v5, v1

    aput v16, v5, v13

    aput v10, v5, v12

    aput v16, v5, v9

    goto :goto_2

    :pswitch_4
    new-array v5, v8, [F

    aput v14, v5, v3

    aput v16, v5, v4

    aput v14, v5, v1

    aput v16, v5, v13

    aput v10, v5, v12

    aput v16, v5, v9

    goto :goto_2

    :pswitch_5
    new-array v5, v12, [F

    aput v14, v5, v3

    aput v16, v5, v4

    aput v10, v5, v1

    aput v16, v5, v13

    goto :goto_2

    :pswitch_6
    new-array v1, v1, [F

    aput v14, v1, v3

    aput v16, v1, v4

    goto :goto_1

    :pswitch_7
    new-array v1, v1, [F

    aput v10, v1, v3

    aput v16, v1, v4

    goto :goto_1

    :pswitch_8
    new-array v5, v8, [F

    aput v6, v5, v3

    aput v11, v5, v4

    aput v15, v5, v1

    aput v11, v5, v13

    aput v15, v5, v12

    aput v11, v5, v9

    goto :goto_2

    :pswitch_9
    new-array v5, v12, [F

    aput v15, v5, v3

    aput v11, v5, v4

    aput v6, v5, v1

    aput v11, v5, v13

    goto :goto_2

    :pswitch_a
    new-array v5, v8, [F

    aput v14, v5, v3

    aput v11, v5, v4

    aput v15, v5, v1

    aput v11, v5, v13

    aput v15, v5, v12

    aput v11, v5, v9

    goto :goto_2

    :pswitch_b
    new-array v5, v9, [F

    aput v15, v5, v3

    aput v11, v5, v4

    aput v14, v5, v1

    aput v11, v5, v13

    aput v14, v5, v12

    goto :goto_2

    :pswitch_c
    new-array v5, v12, [F

    aput v15, v5, v3

    aput v11, v5, v4

    aput v14, v5, v1

    aput v11, v5, v13

    goto/16 :goto_2

    :pswitch_d
    new-array v1, v1, [F

    aput v14, v1, v3

    aput v11, v1, v4

    goto/16 :goto_1

    :pswitch_e
    new-array v1, v1, [F

    aput v15, v1, v3

    aput v11, v1, v4

    goto/16 :goto_1

    :pswitch_f
    new-array v5, v12, [F

    aput v16, v5, v3

    aput v15, v5, v4

    aput v16, v5, v1

    aput v15, v5, v13

    goto/16 :goto_2

    :pswitch_10
    new-array v5, v12, [F

    const/high16 v6, 0x41700000    # 15.0f

    aput v6, v5, v3

    aput v15, v5, v4

    aput v16, v5, v1

    aput v15, v5, v13

    goto/16 :goto_2

    :pswitch_11
    new-array v5, v8, [F

    aput v14, v5, v3

    aput v15, v5, v4

    aput v16, v5, v1

    aput v15, v5, v13

    aput v16, v5, v12

    aput v15, v5, v9

    goto/16 :goto_2

    :pswitch_12
    new-array v5, v8, [F

    aput v16, v5, v3

    aput v15, v5, v4

    aput v14, v5, v1

    aput v15, v5, v13

    aput v14, v5, v12

    aput v15, v5, v9

    goto/16 :goto_2

    :pswitch_13
    new-array v5, v12, [F

    aput v16, v5, v3

    aput v15, v5, v4

    aput v14, v5, v1

    aput v15, v5, v13

    goto/16 :goto_2

    :pswitch_14
    new-array v1, v1, [F

    aput v14, v1, v3

    const/high16 v5, 0x40800000    # 4.0f

    aput v5, v1, v4

    goto/16 :goto_1

    :pswitch_15
    new-array v1, v1, [F

    const/high16 v5, 0x40a00000    # 5.0f

    aput v5, v1, v3

    aput v15, v1, v4

    goto/16 :goto_1

    :pswitch_16
    const/4 v1, 0x0

    goto/16 :goto_1

    :goto_3
    if-eqz v6, :cond_3

    :goto_4
    array-length v1, v6

    if-ge v3, v1, :cond_3

    aget v1, v6, v3

    mul-float v1, v1, v2

    aput v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    new-instance v8, Ljava/awt/BasicStroke;

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    move-object v1, v8

    move v3, v0

    invoke-direct/range {v1 .. v7}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    return-object v8

    :cond_4
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Unsupported line pattern value"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSymbolName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextAsString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopmostParentShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTopmostParentShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getTxtAngle()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtAngle:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtAngle()Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTxtHeight()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTxtLocPinX()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTxtLocPinY()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtHeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTxtPinX()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTxtPinY()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinY:Ljava/lang/Double;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTxtWidth()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    const/4 v0, 0x0

    throw v0
.end method

.method public getWidth()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_width:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Width not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasGeometry()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometrySections()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasMaster()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMasterShape()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParent()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShapes()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDeleted()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    const/4 v0, 0x0

    throw v0
.end method

.method public isShape1D()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getBeginX()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopmost()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readProperties()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "PinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "PinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "Width"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_width:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "Height"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_height:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LocPinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LocPinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "BeginX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "BeginY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "EndX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "EndY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "Angle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_angle:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "RotationXAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationXAngle:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "RotationYAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationYAngle:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "RotationZAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationZAngle:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "FlipX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipX:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "FlipY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipY:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtPinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtPinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtLocPinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtLocPinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtWidth"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtHeight"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtAngle:Ljava/lang/Double;

    return-void
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    const/4 p1, 0x0

    throw p1
.end method

.method public setupSectionMasters()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getSection(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometryByIdx(J)Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    :try_end_0
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    return-void

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

    instance-of v0, v0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    const-string v1, "\">"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": <Shape ID=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<Shape ID=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;I)V
    :try_end_0
    .catch Lorg/apache/poi/xdgf/usermodel/shape/exceptions/StopVisitingThisBranch; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object p1

    throw p1

    :catch_1
    :cond_1
    return-void
.end method

.method public visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;Ljava/awt/geom/AffineTransform;I)V
    .locals 3

    .line 2
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getParentTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0, p2, p3}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;Ljava/awt/geom/AffineTransform;I)V
    :try_end_0
    .catch Lorg/apache/poi/xdgf/usermodel/shape/exceptions/StopVisitingThisBranch; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object p1

    throw p1

    :catch_1
    :cond_1
    return-void
.end method
