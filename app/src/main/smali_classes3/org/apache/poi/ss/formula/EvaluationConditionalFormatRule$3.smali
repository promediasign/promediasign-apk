.class Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$3;
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

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$3;->this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/util/List;)Ljava/util/Set;
    .locals 4
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

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-lez v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
