.class public final Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

.field private _indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method

.method private ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    return-object v0
.end method

.method public getFillBackgroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    :goto_0
    return-object v1
.end method

.method public getFillForegroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    :goto_0
    return-object v1
.end method

.method public getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setFillBackgroundColor(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetBgColor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->addNewBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    :goto_0
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    return-void
.end method

.method public setFillBackgroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setBgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setFillForegroundColor(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetFgColor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->addNewFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    :goto_0
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    return-void
.end method

.method public setFillForegroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setFgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    return-void
.end method
