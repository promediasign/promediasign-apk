.class final Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _cellCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;",
            "Lorg/apache/poi/ss/formula/EvaluationCell;",
            ">;"
        }
    .end annotation
.end field

.field private final _xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-void
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    return-void
.end method

.method public getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;-><init>(II)V

    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v5, v3, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;)V

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;-><init>(II)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/EvaluationCell;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    invoke-direct {v1, p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method
