.class public Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataBarFormatting;


# instance fields
.field _colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field _databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method


# virtual methods
.method public createThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-object v0
.end method

.method public bridge synthetic getColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->getColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0
.end method

.method public bridge synthetic getMaxThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->getMaxThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public getMaxThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getCfvoArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-object v0
.end method

.method public bridge synthetic getMinThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->getMinThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public getMinThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getCfvoArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-object v0
.end method

.method public getWidthMax()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getWidthMin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIconOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->isSetShowValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getShowValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLeftToRight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setIconOnly(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->setShowValue(Z)V

    return-void
.end method

.method public setLeftToRight(Z)V
    .locals 0

    return-void
.end method

.method public setWidthMax(I)V
    .locals 0

    return-void
.end method

.method public setWidthMin(I)V
    .locals 0

    return-void
.end method
