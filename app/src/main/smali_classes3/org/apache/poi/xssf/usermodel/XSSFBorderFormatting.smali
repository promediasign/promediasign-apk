.class public Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/BorderFormatting;


# instance fields
.field _border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

.field _colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method

.method private getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-short p1, p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public getBorderBottom()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderDiagonal()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderDiagonalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderDiagonalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderHorizontalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderLeft()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderRight()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderTop()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderVerticalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBottomBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBottomBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getBottomBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBottomBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getBottomBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getDiagonalBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getDiagonalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getDiagonalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getDiagonalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getDiagonalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getHorizontalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getHorizontalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getHorizontalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getLeftBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getLeftBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getLeftBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getLeftBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getLeftBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getRightBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getRightBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getTopBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getTopBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getTopBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getVerticalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getVerticalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getVerticalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetBottom()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderBottom(S)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    return-void
.end method

.method public setBorderDiagonal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetDiagonal()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderDiagonal(S)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderDiagonal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    return-void
.end method

.method public setBorderHorizontal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetHorizontal()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetLeft()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderLeft(S)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetRight()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderRight(S)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetTop()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderTop(S)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    return-void
.end method

.method public setBorderVertical(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetVertical()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBottomBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setDiagonalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setDiagonalBorderColor(S)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setHorizontalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setHorizontalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setHorizontalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setHorizontalBorderColor(S)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setHorizontalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setLeftBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setRightBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setTopBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setVerticalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setVerticalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setVerticalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setVerticalBorderColor(S)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setVerticalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method
