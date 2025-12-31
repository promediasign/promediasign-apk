.class public final Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;
.implements Lorg/apache/poi/ss/formula/EvaluationWorkbook;
.implements Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

.field private final _uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method private constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method private getSheetExtIx(Lorg/apache/poi/ss/formula/SheetIdentifier;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->getLastSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(II)S

    move-result p1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v0, v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 0

    return-void
.end method

.method public convertFromExternSheetIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFirstSheetIndexFromExternSheetIndex(I)I

    move-result p1

    return p1
.end method

.method public createName()Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createName()Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->createName()Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    return-object v0
.end method

.method public get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetExtIx(Lorg/apache/poi/ss/formula/SheetIdentifier;)I

    move-result p2

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/ss/util/AreaReference;I)V

    return-object v0
.end method

.method public get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 2
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetExtIx(Lorg/apache/poi/ss/formula/SheetIdentifier;)I

    move-result p2

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/ss/util/CellReference;I)V

    return-object v0
.end method

.method public getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object p1

    return-object p1
.end method

.method public getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "XSSF-style external names are not supported for HSSF"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->convertFromExternSheetIndex(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getLastSheetIndexFromExternSheetIndex(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-direct {v0, v2, v1, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "XSSF-style external references are not supported for HSSF"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result p1

    return p1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->getHSSFCell()Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1
.end method

.method public getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 4

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;

    invoke-direct {p1, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->getIndex()I

    move-result p1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    return-object v0
.end method

.method public getNameText(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetExtIx(Lorg/apache/poi/ss/formula/SheetIdentifier;)I

    move-result p2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameXPtg(Ljava/lang/String;ILorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object p1

    return-object p1
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public getSheetFirstNameByExternSheet(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetFirstNameFromExternSheet(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 1

    .line 2
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;->getHSSFSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p1

    return p1
.end method

.method public getSheetLastNameByExternSheet(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetLastNameFromExternSheet(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method public getTable(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Table;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "XSSF-style tables are not supported for HSSF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    return-object v0
.end method

.method public resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getNameIndex()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->resolveNameXText(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
