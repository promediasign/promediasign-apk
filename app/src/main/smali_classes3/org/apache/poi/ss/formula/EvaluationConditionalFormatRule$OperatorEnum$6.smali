.class final enum Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$6;
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
