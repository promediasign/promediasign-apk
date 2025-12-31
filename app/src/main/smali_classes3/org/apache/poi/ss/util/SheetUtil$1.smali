.class final Lorg/apache/poi/ss/util/SheetUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/FormulaEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/SheetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 0

    return-void
.end method

.method public evaluate(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public evaluateAll()V
    .locals 0

    return-void
.end method

.method public evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)I
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()I

    move-result p1

    return p1
.end method

.method public evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    return-object p1
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0

    return-void
.end method

.method public notifySetFormula(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0

    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0

    return-void
.end method

.method public setDebugEvaluationOutputForNextEval(Z)V
    .locals 0

    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 0

    return-void
.end method

.method public setupReferencedWorkbooks(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaEvaluator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
