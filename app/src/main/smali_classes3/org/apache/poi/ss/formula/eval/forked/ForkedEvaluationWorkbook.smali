.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationWorkbook;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

.field private final _sharedSheetsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    return-void
.end method

.method private getSharedSheet(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;-><init>(Lorg/apache/poi/ss/formula/EvaluationSheet;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->clearAllCachedResultValues()V

    return-void
.end method

.method public convertFromExternSheetIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->convertFromExternSheetIndex(I)I

    move-result p1

    return p1
.end method

.method public copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v4, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    invoke-interface {p1, v3}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Sheet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEvaluationCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getSharedSheet(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object p1

    return-object p1
.end method

.method public getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object p1

    return-object p1
.end method

.method public getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object p1

    return-object p1
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object p1

    return-object p1
.end method

.method public getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object p1

    return-object p1
.end method

.method public getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Updated formulas not supported yet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    return-object p1
.end method

.method public getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    return-object p1
.end method

.method public getOrCreateUpdatableCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getSharedSheet(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->getOrCreateUpdatableCell(II)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    move-result-object p1

    return-object p1
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getSharedSheet(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    move-result-object p1

    return-object p1
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationWorkbook;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result p1

    return p1
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v0

    return-object v0
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    return-object v0
.end method

.method public resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
