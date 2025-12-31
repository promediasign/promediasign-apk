.class public Lorg/apache/poi/xdgf/usermodel/XDGFPage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _content:Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

.field protected _pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

.field protected _pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/PageType;Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;Lorg/apache/poi/xdgf/usermodel/XDGFPages;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-virtual {p2, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->setPage(Lorg/apache/poi/xdgf/usermodel/XDGFPage;)V

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/PageType;->isSetPageSheet()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/PageType;->getPageSheet()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    invoke-direct {p2, v0, p3}, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBoundingBox()Ljava/awt/geom/Rectangle2D;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageSize()Lorg/apache/poi/xdgf/geom/Dimension2dDouble;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageOffset()Ljava/awt/geom/Point2D$Double;

    move-result-object v1

    new-instance v11, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {v1}, Ljava/awt/geom/Point2D$Double;->getX()D

    move-result-wide v2

    neg-double v3, v2

    invoke-virtual {v1}, Ljava/awt/geom/Point2D$Double;->getY()D

    move-result-wide v1

    neg-double v5, v1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->getWidth()D

    move-result-wide v7

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->getHeight()D

    move-result-wide v9

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v11
.end method

.method public getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    return-object v0
.end method

.method public getID()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageNumber()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->getPageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPageOffset()Ljava/awt/geom/Point2D$Double;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v1, "XRulerOrigin"

    invoke-virtual {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v2, "YRulerOrigin"

    invoke-virtual {v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    :cond_1
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getPageSheet()Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    return-object v0
.end method

.method public getPageSize()Lorg/apache/poi/xdgf/geom/Dimension2dDouble;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v1, "PageWidth"

    invoke-virtual {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v2, "PageHeight"

    invoke-virtual {v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;-><init>(DD)V

    return-object v2

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Cannot determine page size"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
