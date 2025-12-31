.class public Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PatternFormatting;


# instance fields
.field _colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field _fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method

.method private setFillBackgroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetBgColor()V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setBgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method private setFillForegroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetFgColor()V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setFgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getFillBackgroundColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->getFillBackgroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v0

    return v0
.end method

.method public bridge synthetic getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->getFillBackgroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillBackgroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0
.end method

.method public getFillForegroundColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->getFillForegroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v0

    return v0
.end method

.method public bridge synthetic getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->getFillForegroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillForegroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetFgColor()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFillPattern()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetPatternType()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setFillBackgroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillBackgroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setFillBackgroundColor(S)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillBackgroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setFillForegroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillForegroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setFillForegroundColor(S)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillForegroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setFillPattern(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetPatternType()V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    :goto_1
    return-void
.end method
