.class public Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    return-void
.end method


# virtual methods
.method public getCTCellAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    return-object v0
.end method

.method public getHorizontal()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment;->GENERAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;

    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->values()[Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getIndent()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getIndent()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShrinkToFit()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getShrinkToFit()Z

    move-result v0

    return v0
.end method

.method public getTextRotation()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getTextRotation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVertical()Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment;->BOTTOM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;

    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->values()[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getWrapText()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getWrapText()Z

    move-result v0

    return v0
.end method

.method public setHorizontal(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setHorizontal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;)V

    return-void
.end method

.method public setIndent(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setIndent(J)V

    return-void
.end method

.method public setShrinkToFit(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setShrinkToFit(Z)V

    return-void
.end method

.method public setTextRotation(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 v0, -0x5a

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, -0x1

    mul-long p1, p1, v0

    const-wide/16 v0, 0x5a

    add-long/2addr p1, v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setTextRotation(J)V

    return-void
.end method

.method public setVertical(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setVertical(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;)V

    return-void
.end method

.method public setWrapText(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setWrapText(Z)V

    return-void
.end method
