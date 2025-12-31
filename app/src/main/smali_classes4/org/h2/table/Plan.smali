.class public Lorg/h2/table/Plan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allConditions:[Lorg/h2/expression/Expression;

.field private final allFilters:[Lorg/h2/table/TableFilter;

.field private final filters:[Lorg/h2/table/TableFilter;

.field private final planItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/table/TableFilter;",
            "Lorg/h2/table/PlanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lorg/h2/table/TableFilter;ILorg/h2/expression/Expression;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/Plan;->planItems:Ljava/util/HashMap;

    new-array v0, p2, [Lorg/h2/table/TableFilter;

    iput-object v0, p0, Lorg/h2/table/Plan;->filters:[Lorg/h2/table/TableFilter;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-ge v1, p2, :cond_1

    aget-object p3, p1, v1

    new-instance v3, Lorg/h2/table/Plan$1;

    invoke-direct {v3, p0, v2, v0}, Lorg/h2/table/Plan$1;-><init>(Lorg/h2/table/Plan;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v3}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/expression/Expression;

    iput-object p1, p0, Lorg/h2/table/Plan;->allConditions:[Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/table/TableFilter;

    iput-object p1, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 4

    invoke-virtual {p1, p1, p2}, Lorg/h2/table/TableFilter;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/table/Plan;->allConditions:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateCost(Lorg/h2/engine/Session;)D
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "Plan       : calculate cost for plan {0}"

    invoke-virtual {v2, v3, v4}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    invoke-static {v3}, Lorg/h2/expression/ExpressionVisitor;->allColumnsForTableFilters([Lorg/h2/table/TableFilter;)Ljava/util/HashSet;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    array-length v8, v7

    if-ge v6, v8, :cond_4

    aget-object v7, v7, v6

    invoke-virtual {v2}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Plan       :   for table filter {0}"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v0

    invoke-virtual {v2, v8, v9}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v8, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    invoke-virtual {v7, p1, v8, v6, v3}, Lorg/h2/table/TableFilter;->getBestPlanItem(Lorg/h2/engine/Session;[Lorg/h2/table/TableFilter;ILjava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object v8

    iget-object v9, p0, Lorg/h2/table/Plan;->planItems:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-wide v9, v8, Lorg/h2/table/PlanItem;->cost:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v10

    invoke-interface {v10}, Lorg/h2/index/Index;->getPlanSQL()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v0

    aput-object v10, v11, v1

    const-string v9, "Plan       :   best plan item cost {0} index {1}"

    invoke-virtual {v2, v9, v11}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-wide v8, v8, Lorg/h2/table/PlanItem;->cost:D

    mul-double v8, v8, v4

    add-double/2addr v4, v8

    invoke-direct {p0, v7, v1}, Lorg/h2/table/Plan;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    invoke-virtual {v7}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-object v8, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v7, v8}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v6, v1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :cond_5
    invoke-virtual {v2}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "Plan       : plan cost {0}"

    invoke-virtual {p1, v2, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v6, p1, v3

    invoke-direct {p0, v6, v0}, Lorg/h2/table/Plan;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    add-int/2addr v3, v1

    goto :goto_2

    :cond_7
    return-wide v4
.end method

.method public getFilters()[Lorg/h2/table/TableFilter;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Plan;->filters:[Lorg/h2/table/TableFilter;

    return-object v0
.end method

.method public getItem(Lorg/h2/table/TableFilter;)Lorg/h2/table/PlanItem;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Plan;->planItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/PlanItem;

    return-object p1
.end method

.method public removeUnusableIndexConditions()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/h2/table/Plan;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v4, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    array-length v4, v4

    sub-int/2addr v4, v3

    if-lt v1, v4, :cond_0

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v3

    iget-boolean v3, v3, Lorg/h2/engine/DbSettings;->earlyFilter:Z

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2, v0}, Lorg/h2/table/TableFilter;->optimizeFullCondition(Z)V

    :cond_1
    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->removeUnusableIndexConditions()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length v1, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v2, v3

    invoke-direct {p0, v4, v0}, Lorg/h2/table/Plan;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
