.class final Lorg/apache/poi/ss/formula/functions/LogicalFunction$9;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LogicalFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    instance-of p1, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-nez p1, :cond_1

    instance-of p1, p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-nez p1, :cond_1

    instance-of p1, p3, Lorg/apache/poi/ss/formula/eval/RefListEval;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/BoolEval;->TRUE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    return-object p1
.end method
