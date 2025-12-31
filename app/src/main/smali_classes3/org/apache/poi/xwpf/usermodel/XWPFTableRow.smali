.class public Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

.field private table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

.field private tableCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCells()Ljava/util/List;

    return-void
.end method

.method private getRepeat()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->isSetTrPr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->sizeOfTblHeaderArray()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->getTblHeaderArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->isSetVal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/model/WMLHelper;->convertSTOnOffToBoolean(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->isSetTrPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->addNewTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addNewTableCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->addNewTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public createCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 3

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->addNewTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCell(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->sizeOfTcArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCells()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->sizeOfTrHeightArray()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->getTrHeightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    :goto_0
    return v2
.end method

.method public getTable()Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object v0
.end method

.method public getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getCTTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTableCells()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->getTcArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v6

    invoke-direct {v5, v4, p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    return-object v0
.end method

.method public getTableICells()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/ICell;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    const-string v2, "./*"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v4

    invoke-direct {v3, v2, p0, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v4

    invoke-direct {v3, v2, p0, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v0
.end method

.method public isCantSplitRow()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->isSetTrPr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->sizeOfCantSplitArray()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->getCantSplitArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->isSetVal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/model/WMLHelper;->convertSTOnOffToBoolean(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isRepeatHeader()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-direct {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getRepeat()Z

    move-result v2

    if-eq v1, p0, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public removeCell(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->sizeOfTcArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCantSplitRow(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->sizeOfCantSplitArray()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->getCantSplitArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->addNewCantSplit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/xwpf/model/WMLHelper;->convertBooleanToSTOnOff(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->sizeOfTrHeightArray()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->addNewTrHeight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->getTrHeightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    invoke-static {p1, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;->setVal(Ljava/math/BigInteger;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setRepeatHeader(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->sizeOfTblHeaderArray()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->getTblHeaderArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->addNewTblHeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/xwpf/model/WMLHelper;->convertBooleanToSTOnOff(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method
