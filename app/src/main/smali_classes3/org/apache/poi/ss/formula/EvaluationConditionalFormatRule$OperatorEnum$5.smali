.class final enum Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$5;
.super Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;)V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
