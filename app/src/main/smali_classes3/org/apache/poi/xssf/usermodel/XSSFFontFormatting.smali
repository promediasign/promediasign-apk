.class public Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/FontFormatting;


# instance fields
.field private _colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private _font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method


# virtual methods
.method public getEscapementType()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfVertAlignArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getVertAlignArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    return v0
.end method

.method public bridge synthetic getFontColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->getFontColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFontColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0
.end method

.method public getFontColorIndex()S
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v0

    long-to-int v1, v0

    :cond_1
    int-to-short v0, v1

    return v0
.end method

.method public getFontHeight()I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSzArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->getVal()D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-int v0, v3

    int-to-short v0, v0

    return v0
.end method

.method public getUnderlineType()S
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfUArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x22

    return v0

    :cond_2
    const/16 v0, 0x21

    return v0

    :cond_3
    return v2
.end method

.method public isBold()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfBArray()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isItalic()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfIArray()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isStruckout()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getStrikeArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public resetFontStyle()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setEscapementType(S)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setVertAlignArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewVertAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;)V

    :cond_0
    return-void
.end method

.method public setFontColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setColorArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setFontColorIndex(S)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setColorArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    :cond_0
    return-void
.end method

.method public setFontHeight(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setSzArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewSz()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    int-to-double v1, p1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    div-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->setVal(D)V

    :cond_0
    return-void
.end method

.method public setFontStyle(ZZ)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setIArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setBArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewI()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewB()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    :cond_1
    return-void
.end method

.method public setUnderlineType(S)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setUArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontUnderline;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewU()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;)V

    :cond_0
    return-void
.end method
