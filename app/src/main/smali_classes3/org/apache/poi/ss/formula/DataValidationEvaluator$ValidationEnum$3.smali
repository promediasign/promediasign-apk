.class final enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$3;
.super Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/DataValidationEvaluator$1;)V

    return-void
.end method


# virtual methods
.method public isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 7

    invoke-static {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationValuesForConstraint(Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ValueEval;

    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getSheetIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    :cond_2
    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v3, :cond_3

    return v1

    :cond_3
    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v3, :cond_5

    sget-object v3, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v3}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v3

    if-ne v2, v3, :cond_1

    return v1

    :cond_5
    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v3, :cond_6

    sget-object v3, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v3}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    return v1

    :cond_6
    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v3, :cond_1

    sget-object v3, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v3}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
