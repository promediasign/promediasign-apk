.class Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFilter(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$4;->this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/util/List;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-static {v7}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$100(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v5, v8

    new-instance v8, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {v7}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$100(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    aput-object v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/LinkedHashSet;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    new-instance v8, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    new-instance v9, Ljava/lang/Double;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v5, v10

    :goto_1
    invoke-direct {v9, v5, v6}, Ljava/lang/Double;-><init>(D)V

    const/4 v5, 0x0

    invoke-direct {v8, v9, v5}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v7, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-interface {p1, v0, v3, v3}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    :goto_2
    new-instance p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p1, v0, v5}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v4
.end method
