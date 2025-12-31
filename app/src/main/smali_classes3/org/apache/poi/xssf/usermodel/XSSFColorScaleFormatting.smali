.class public Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ColorScaleFormatting;


# instance fields
.field private _indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private _scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method


# virtual methods
.method public createColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0
.end method

.method public bridge synthetic createThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->createThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public createThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-object v0
.end method

.method public bridge synthetic getColors()[Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->getColors()[Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getColors()[Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->getColorArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/xssf/usermodel/XSSFColor;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getNumControlPoints()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getThresholds()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->getThresholds()[Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public getThresholds()[Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->getCfvoArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setColors([Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->setColorArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setNumControlPoints(I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->removeCfvo(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfColorArray()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->removeColor(I)V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setThresholds([Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;)V
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->getCTCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->setCfvoArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-void
.end method
