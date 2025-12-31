.class public abstract Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _cells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field protected _character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

.field protected _document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

.field protected _geometry:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;",
            ">;"
        }
    .end annotation
.end field

.field protected _sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;",
            ">;"
        }
    .end annotation
.end field

.field protected _sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    :try_start_0
    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getSectionArray()[Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    move-result-object p1

    array-length p2, p1

    if-gtz p2, :cond_0

    return-void

    :cond_0
    aget-object p1, p1, v2
    :try_end_0
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    aget-object p1, p2, v2
    :try_end_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_1 .. :try_end_1} :catch_0

    throw v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    return-object p1
.end method

.method public getDocument()Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    return-object v0
.end method

.method public getFillStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getFontColor()Ljava/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->getFontColor()Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineCap()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LineCap"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineCap()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineColor()Ljava/awt/Color;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LineColor"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/awt/Color;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinePattern()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LinePattern"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLinePattern()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getLineWeight()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LineWeight"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineWeight()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSection(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    return-object p1
.end method

.method public getTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
