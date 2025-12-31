.class public Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PrintSetup;


# instance fields
.field private ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

.field private pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

.field private pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageSetup()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object p1

    goto :goto_2

    :goto_3
    return-void
.end method


# virtual methods
.method public getCellComment()Lorg/apache/poi/ss/usermodel/PrintCellComments;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getCellComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/PrintCellComments;->NONE:Lorg/apache/poi/ss/usermodel/PrintCellComments;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/PrintCellComments;->valueOf(I)Lorg/apache/poi/ss/usermodel/PrintCellComments;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCopies()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getCopies()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getDraft()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getDraft()Z

    move-result v0

    return v0
.end method

.method public getFitHeight()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getFitToHeight()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getFitWidth()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getFitToWidth()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getFooterMargin()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getFooter()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHResolution()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getHorizontalDpi()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getHeaderMargin()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getHeader()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLandscape()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getOrientation()Lorg/apache/poi/ss/usermodel/PrintOrientation;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PrintOrientation;->LANDSCAPE:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLeftToRight()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getPageOrder()Lorg/apache/poi/ss/usermodel/PageOrder;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PageOrder;->OVER_THEN_DOWN:Lorg/apache/poi/ss/usermodel/PageOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNoColor()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getBlackAndWhite()Z

    move-result v0

    return v0
.end method

.method public getNoOrientation()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getOrientation()Lorg/apache/poi/ss/usermodel/PrintOrientation;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PrintOrientation;->DEFAULT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNotes()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getCellComment()Lorg/apache/poi/ss/usermodel/PrintCellComments;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PrintCellComments;->AS_DISPLAYED:Lorg/apache/poi/ss/usermodel/PrintCellComments;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOrientation()Lorg/apache/poi/ss/usermodel/PrintOrientation;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getOrientation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/PrintOrientation;->DEFAULT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/PrintOrientation;->valueOf(I)Lorg/apache/poi/ss/usermodel/PrintOrientation;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPageOrder()Lorg/apache/poi/ss/usermodel/PageOrder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getPageOrder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getPageOrder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/PageOrder;->valueOf(I)Lorg/apache/poi/ss/usermodel/PageOrder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPageStart()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getFirstPageNumber()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getPaperSize()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getPaperSize()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getPaperSizeEnum()Lorg/apache/poi/ss/usermodel/PaperSize;
    .locals 2

    invoke-static {}, Lorg/apache/poi/ss/usermodel/PaperSize;->values()[Lorg/apache/poi/ss/usermodel/PaperSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getPaperSize()S

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getScale()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getScale()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getUsePage()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getUseFirstPageNumber()Z

    move-result v0

    return v0
.end method

.method public getVResolution()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getVerticalDpi()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getValidSettings()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getUsePrinterDefaults()Z

    move-result v0

    return v0
.end method

.method public setCopies(S)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setCopies(J)V

    return-void
.end method

.method public setDraft(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setDraft(Z)V

    return-void
.end method

.method public setFitHeight(S)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setFitToHeight(J)V

    return-void
.end method

.method public setFitWidth(S)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setFitToWidth(J)V

    return-void
.end method

.method public setFooterMargin(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setFooter(D)V

    return-void
.end method

.method public setHResolution(S)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setHorizontalDpi(J)V

    return-void
.end method

.method public setHeaderMargin(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setHeader(D)V

    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/PrintOrientation;->LANDSCAPE:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setOrientation(Lorg/apache/poi/ss/usermodel/PrintOrientation;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/apache/poi/ss/usermodel/PrintOrientation;->PORTRAIT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setLeftToRight(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/PageOrder;->OVER_THEN_DOWN:Lorg/apache/poi/ss/usermodel/PageOrder;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setPageOrder(Lorg/apache/poi/ss/usermodel/PageOrder;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/apache/poi/ss/usermodel/PageOrder;->DOWN_THEN_OVER:Lorg/apache/poi/ss/usermodel/PageOrder;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setNoColor(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setBlackAndWhite(Z)V

    return-void
.end method

.method public setNoOrientation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/PrintOrientation;->DEFAULT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setOrientation(Lorg/apache/poi/ss/usermodel/PrintOrientation;)V

    :cond_0
    return-void
.end method

.method public setNotes(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments;->AS_DISPLAYED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setCellComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;)V

    :cond_0
    return-void
.end method

.method public setOrientation(Lorg/apache/poi/ss/usermodel/PrintOrientation;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/PrintOrientation;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setOrientation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;)V

    return-void
.end method

.method public setPageOrder(Lorg/apache/poi/ss/usermodel/PageOrder;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/PageOrder;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setPageOrder(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;)V

    return-void
.end method

.method public setPageStart(S)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setFirstPageNumber(J)V

    return-void
.end method

.method public setPaperSize(Lorg/apache/poi/ss/usermodel/PaperSize;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setPaperSize(S)V

    return-void
.end method

.method public setPaperSize(S)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setPaperSize(J)V

    return-void
.end method

.method public setScale(S)V
    .locals 3

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x190

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setScale(J)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string v0, "Scale value not accepted: you must choose a value between 10 and 400."

    invoke-direct {p1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUsePage(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setUseFirstPageNumber(Z)V

    return-void
.end method

.method public setVResolution(S)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setVerticalDpi(J)V

    return-void
.end method

.method public setValidSettings(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setUsePrinterDefaults(Z)V

    return-void
.end method
