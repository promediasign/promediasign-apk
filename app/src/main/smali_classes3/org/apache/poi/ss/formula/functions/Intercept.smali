.class public final Lorg/apache/poi/ss/formula/functions/Intercept;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# instance fields
.field private final func:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;

    sget-object v1, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->INTERCEPT:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;-><init>(Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Intercept;->func:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Intercept;->func:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method
