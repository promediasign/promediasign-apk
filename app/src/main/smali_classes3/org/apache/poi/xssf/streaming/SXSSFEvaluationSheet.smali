.class final Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationSheet;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-void
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 0

    return-void
.end method

.method public getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getLastFlushedRowNum()I

    move-result p2

    if-le p1, p2, :cond_0

    return-object v1

    :cond_0
    new-instance p2, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;

    invoke-direct {p2, p1}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;-><init>(I)V

    throw p2

    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    new-instance p2, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    invoke-direct {p2, p1, p0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;)V

    return-object p2
.end method

.method public getSXSSFSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-object v0
.end method
