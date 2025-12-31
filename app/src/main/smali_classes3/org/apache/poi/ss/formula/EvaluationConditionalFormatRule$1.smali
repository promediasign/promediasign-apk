.class Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;
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

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;->this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/util/List;)Ljava/util/Set;
    .locals 3
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

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;->this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->access$000(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFilterConfiguration()Lorg/apache/poi/ss/usermodel/ConditionFilterData;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getBottom()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getRank()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getPercent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int v0, v0, v2

    div-int/lit8 v2, v0, 0x64

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
