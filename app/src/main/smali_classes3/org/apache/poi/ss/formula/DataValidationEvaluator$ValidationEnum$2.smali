.class final enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$2;
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
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    double-to-int p1, p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
