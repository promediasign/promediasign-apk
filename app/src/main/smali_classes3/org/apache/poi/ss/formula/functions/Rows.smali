.class public final Lorg/apache/poi/ss/formula/functions/Rows;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    instance-of p1, p3, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz p1, :cond_0

    check-cast p3, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    instance-of p1, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v0, p1

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :cond_1
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method
