.class public Lorg/h2/command/dml/Select;
.super Lorg/h2/command/dml/Query;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/command/dml/Select$LazyResultGroupSorted;,
        Lorg/h2/command/dml/Select$LazyResultQueryFlat;,
        Lorg/h2/command/dml/Select$LazyResultSelect;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private checkInit:Z

.field private condition:Lorg/h2/expression/Expression;

.field private cost:D

.field private currentGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/expression/Expression;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentGroupRowId:I

.field private distinctColumnCount:I

.field private expressionArray:[Lorg/h2/expression/Expression;

.field private expressions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private groupByExpression:[Z

.field private groupIndex:[I

.field private having:Lorg/h2/expression/Expression;

.field private havingIndex:I

.field private isDistinctQuery:Z

.field private isForUpdate:Z

.field private isForUpdateMvcc:Z

.field private isGroupQuery:Z

.field private isGroupSortedQuery:Z

.field private isPrepared:Z

.field private isQuickAggregateQuery:Z

.field private orderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private sort:Lorg/h2/result/SortOrder;

.field private sortUsingIndex:Z

.field private final topFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;"
        }
    .end annotation
.end field

.field private topTableFilter:Lorg/h2/table/TableFilter;

.field private visibleColumnCount:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/dml/Query;-><init>(Lorg/h2/engine/Session;)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lorg/h2/command/dml/Select;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    return-void
.end method

.method public static synthetic access$100(Lorg/h2/command/dml/Select;)I
    .locals 0

    iget p0, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    return p0
.end method

.method public static synthetic access$1000(Lorg/h2/command/dml/Select;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    return-void
.end method

.method public static synthetic access$1100(Lorg/h2/command/dml/Select;)[I
    .locals 0

    iget-object p0, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/h2/command/dml/Select;)Lorg/h2/engine/Session;
    .locals 0

    iget-object p0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/h2/command/dml/Select;[Lorg/h2/value/Value;I)[Lorg/h2/value/Value;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/dml/Select;->createGroupSortedRow([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1408(Lorg/h2/command/dml/Select;)I
    .locals 2

    iget v0, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    return v0
.end method

.method public static synthetic access$1500(Lorg/h2/command/dml/Select;)[Z
    .locals 0

    iget-object p0, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    return-object p0
.end method

.method public static synthetic access$1600(Lorg/h2/command/dml/Select;)Lorg/h2/engine/Session;
    .locals 0

    iget-object p0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/h2/command/dml/Select;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/command/dml/Select;->resetJoinBatchAfterQuery()V

    return-void
.end method

.method public static synthetic access$300(Lorg/h2/command/dml/Select;)Lorg/h2/table/TableFilter;
    .locals 0

    iget-object p0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/h2/command/dml/Select;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    return-void
.end method

.method public static synthetic access$500(Lorg/h2/command/dml/Select;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    return-void
.end method

.method public static synthetic access$600(Lorg/h2/command/dml/Select;)Z
    .locals 0

    invoke-direct {p0}, Lorg/h2/command/dml/Select;->isConditionMet()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lorg/h2/command/dml/Select;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/h2/command/dml/Select;)Lorg/h2/engine/Session;
    .locals 0

    iget-object p0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    return-object p0
.end method

.method public static synthetic access$902(Lorg/h2/command/dml/Select;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    return-object p1
.end method

.method private createGroupSortedRow([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;
    .locals 5

    new-array v0, p2, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-eqz v3, :cond_0

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    aget-object v4, p1, v2

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_2

    iget-object p1, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    if-eqz p1, :cond_1

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    aput-object p1, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lorg/h2/command/dml/Select;->isHavingNullOrFalse([Lorg/h2/value/Value;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-direct {p0, v0, p2}, Lorg/h2/command/dml/Select;->keepOnlyDistinct([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method private createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/h2/result/LocalResult;

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressionArray:[Lorg/h2/expression/Expression;

    iget v2, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    invoke-direct {p1, v0, v1, v2}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    :goto_0
    return-object p1
.end method

.method private expandColumnList(Lorg/h2/table/TableFilter;I)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/h2/table/Column;->getVisible()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Lorg/h2/table/TableFilter;->isNaturalJoinColumn(Lorg/h2/table/Column;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lorg/h2/expression/ExpressionColumn;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v1, v4}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v4, p2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p2, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method private expandColumnList()V
    .locals 7

    .line 2
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isWildcard()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSchemaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getTableAlias()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableFilter;

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/Select;->expandColumnList(Lorg/h2/table/TableFilter;I)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_2
    iget-object v4, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/TableFilter;

    invoke-virtual {v5}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_5

    invoke-virtual {v5}, Lorg/h2/table/TableFilter;->getSchemaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/Select;->expandColumnList(Lorg/h2/table/TableFilter;I)I

    move-result v1

    goto :goto_2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const v0, 0xa476

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_7
    return-void
.end method

.method private getGroupByExpressionCount()I
    .locals 5

    iget-object v0, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-boolean v4, v0, v1

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private getGroupSortedIndex()Lorg/h2/index/Index;
    .locals 6

    iget-object v0, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/index/Index;

    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/index/IndexType;->isScan()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/index/IndexType;->isHash()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-direct {p0, v5, v4}, Lorg/h2/command/dml/Select;->isGroupSortedIndex(Lorg/h2/table/TableFilter;Lorg/h2/index/Index;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method

.method private getSortIndex()Lorg/h2/index/Index;
    .locals 14

    iget-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v2}, Lorg/h2/result/SortOrder;->getQueryColumnIndexes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_5

    aget v7, v2, v5

    if-ltz v7, :cond_4

    iget-object v8, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v6, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Expression;

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    instance-of v7, v6, Lorg/h2/expression/ExpressionColumn;

    if-nez v7, :cond_2

    return-object v1

    :cond_2
    check-cast v6, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v6}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v7

    iget-object v8, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    if-eq v7, v8, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v6}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ORDER BY"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/table/Column;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/table/Column;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v2}, Lorg/h2/result/SortOrder;->getSortTypes()[I

    move-result-object v2

    array-length v3, v0

    if-nez v3, :cond_6

    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_d

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/index/Index;

    invoke-interface {v8}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v8}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/index/IndexType;->isHash()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {v8}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v9

    array-length v10, v9

    array-length v11, v0

    if-ge v10, v11, :cond_9

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    :goto_3
    array-length v11, v0

    if-ge v10, v11, :cond_c

    aget-object v11, v9, v10

    aget-object v12, v0, v10

    iget-object v13, v11, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    if-eq v13, v12, :cond_a

    goto :goto_4

    :cond_a
    iget v11, v11, Lorg/h2/table/IndexColumn;->sortType:I

    aget v12, v2, v10

    if-eq v11, v12, :cond_b

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_c
    return-object v8

    :cond_d
    array-length v2, v0

    if-ne v2, v6, :cond_e

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/index/Index;->isRowIdIndex()Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v0

    :cond_e
    return-object v1
.end method

.method private isConditionMet()Z
    .locals 3

    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/expression/Expression;->getBooleanValue(Lorg/h2/engine/Session;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isGroupSortedIndex(Lorg/h2/table/TableFilter;Lorg/h2/index/Index;)Z
    .locals 10

    invoke-interface {p2}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p2

    array-length v0, p2

    new-array v1, v0, [Z

    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_4

    iget-object v6, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    aget-boolean v6, v6, v4

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Expression;

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    instance-of v7, v6, Lorg/h2/expression/ExpressionColumn;

    if-nez v7, :cond_1

    return v3

    :cond_1
    check-cast v6, Lorg/h2/expression/ExpressionColumn;

    const/4 v7, 0x0

    :goto_1
    array-length v8, p2

    if-ge v7, v8, :cond_3

    invoke-virtual {v6}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v8

    if-ne p1, v8, :cond_2

    aget-object v8, p2, v7

    invoke-virtual {v6}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/h2/table/Column;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    aput-boolean v5, v1, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    const/4 p1, 0x1

    :goto_3
    if-ge p1, v0, :cond_6

    add-int/lit8 p2, p1, -0x1

    aget-boolean p2, v1, p2

    if-nez p2, :cond_5

    aget-boolean p2, v1, p1

    if-eqz p2, :cond_5

    return v3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    return v5
.end method

.method private isHavingNullOrFalse([Lorg/h2/value/Value;)Z
    .locals 2

    iget v0, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-ltz v0, :cond_1

    aget-object p1, p1, v0

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private keepOnlyDistinct([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;
    .locals 2

    iget v0, p0, Lorg/h2/command/dml/Select;->distinctColumnCount:I

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    new-array p2, v0, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private preparePlan(Z)D
    .locals 5

    iget-object v0, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/table/TableFilter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v3, v4}, Lorg/h2/table/TableFilter;->setFullCondition(Lorg/h2/expression/Expression;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/h2/command/dml/Optimizer;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v0, v2, v3}, Lorg/h2/command/dml/Optimizer;-><init>([Lorg/h2/table/TableFilter;Lorg/h2/expression/Expression;Lorg/h2/engine/Session;)V

    invoke-virtual {v1, p1}, Lorg/h2/command/dml/Optimizer;->optimize(Z)V

    invoke-virtual {v1}, Lorg/h2/command/dml/Optimizer;->getTopFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1}, Lorg/h2/command/dml/Optimizer;->getCost()D

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-direct {p0, v2}, Lorg/h2/command/dml/Select;->setEvaluatableRecursive(Lorg/h2/table/TableFilter;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->prepare()V

    :cond_1
    return-wide v0
.end method

.method private queryDistinct(Lorg/h2/result/ResultTarget;J)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_0

    iget-object v5, v0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v5, :cond_0

    iget-object v6, v0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/value/Value;->getInt()I

    move-result v5

    if-lez v5, :cond_0

    int-to-long v5, v5

    add-long v5, p2, v5

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p2

    :goto_0
    invoke-virtual {v0, v2}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    iget-object v7, v0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v7}, Lorg/h2/table/TableFilter;->getIndex()Lorg/h2/index/Index;

    move-result-object v7

    invoke-interface {v7}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lorg/h2/table/Column;->getColumnId()I

    move-result v8

    iget-object v9, v0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v9}, Lorg/h2/command/dml/Query;->getSampleSizeValue(Lorg/h2/engine/Session;)I

    move-result v9

    const/4 v10, 0x0

    move-object v12, v10

    const/4 v11, 0x0

    :cond_1
    add-int/2addr v11, v1

    invoke-virtual {v0, v11}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    iget-object v13, v0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-interface {v7, v13, v12, v10}, Lorg/h2/index/Index;->findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v13

    invoke-interface {v13}, Lorg/h2/index/Cursor;->next()Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v13}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v13

    invoke-interface {v13, v8}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v13

    if-nez v12, :cond_3

    iget-object v12, v0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v12}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v12

    invoke-virtual {v12, v1}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v12

    :cond_3
    invoke-interface {v12, v8, v13}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    new-array v14, v1, [Lorg/h2/value/Value;

    aput-object v13, v14, v2

    move-object/from16 v13, p1

    invoke-interface {v13, v14}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    iget-object v14, v0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v14, :cond_4

    iget-boolean v14, v0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    if-eqz v14, :cond_5

    :cond_4
    cmp-long v14, v5, v3

    if-lez v14, :cond_5

    int-to-long v14, v11

    cmp-long v16, v14, v5

    if-ltz v16, :cond_5

    goto :goto_1

    :cond_5
    if-lez v9, :cond_1

    if-lt v11, v9, :cond_1

    :goto_1
    return-void
.end method

.method private queryFlat(ILorg/h2/result/ResultTarget;J)Lorg/h2/result/LazyResult;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-lez v2, :cond_0

    int-to-long v2, v2

    add-long/2addr p3, v2

    :cond_0
    iget-boolean v2, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0, v4}, Lorg/h2/command/dml/Query;->getSampleSizeValue(Lorg/h2/engine/Session;)I

    move-result v4

    new-instance v5, Lorg/h2/command/dml/Select$LazyResultQueryFlat;

    iget-object v6, p0, Lorg/h2/command/dml/Select;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-direct {v5, p0, v6, v4, p1}, Lorg/h2/command/dml/Select$LazyResultQueryFlat;-><init>(Lorg/h2/command/dml/Select;[Lorg/h2/expression/Expression;II)V

    if-nez p2, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {v5}, Lorg/h2/result/LazyResult;->next()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {p1, v2}, Lorg/h2/table/TableFilter;->lockRowAdd(Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {v5}, Lorg/h2/result/LazyResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    iget-object p1, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    if-eqz p1, :cond_2

    :cond_4
    cmp-long p1, p3, v0

    if-lez p1, :cond_2

    invoke-interface {p2}, Lorg/h2/result/ResultTarget;->getRowCount()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v6, p3

    if-ltz p1, :cond_2

    :cond_5
    iget-boolean p1, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {p1, v2}, Lorg/h2/table/TableFilter;->lockRows(Ljava/util/ArrayList;)V

    :cond_6
    return-object v3
.end method

.method private queryGroup(ILorg/h2/result/LocalResult;)V
    .locals 9

    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    new-array v2, v1, [Lorg/h2/value/Value;

    invoke-static {v2}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0, v3}, Lorg/h2/command/dml/Query;->getSampleSizeValue(Lorg/h2/engine/Session;)I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v5}, Lorg/h2/table/TableFilter;->next()Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    invoke-direct {p0}, Lorg/h2/command/dml/Select;->isConditionMet()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v4, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-nez v4, :cond_1

    move-object v4, v2

    goto :goto_2

    :cond_1
    array-length v4, v4

    new-array v4, v4, [Lorg/h2/value/Value;

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget v7, v7, v6

    iget-object v8, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/expression/Expression;

    iget-object v8, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v7, v8}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v4

    :goto_2
    invoke-virtual {v0, v4}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v6}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    :cond_3
    iput-object v6, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    iget v4, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    const/4 v4, 0x0

    :goto_3
    if-ge v4, p1, :cond_6

    iget-object v6, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    if-eqz v6, :cond_4

    aget-boolean v6, v6, v4

    if-nez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Expression;

    iget-object v7, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-lez v3, :cond_7

    if-lt v5, v3, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    goto :goto_0

    :cond_8
    :goto_4
    iget-object v3, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lorg/h2/util/HashBase;->size()I

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->keys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/Value;

    check-cast v3, Lorg/h2/value/ValueArray;

    invoke-virtual {v0, v3}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v3

    new-array v4, p1, [Lorg/h2/value/Value;

    const/4 v5, 0x0

    :goto_6
    iget-object v6, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-eqz v6, :cond_a

    array-length v7, v6

    if-ge v5, v7, :cond_a

    aget v6, v6, v5

    aget-object v7, v3, v5

    aput-object v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_7
    if-ge v3, p1, :cond_c

    iget-object v5, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    if-eqz v5, :cond_b

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_b

    goto :goto_8

    :cond_b
    iget-object v5, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/Expression;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v5

    aput-object v5, v4, v3

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    invoke-direct {p0, v4}, Lorg/h2/command/dml/Select;->isHavingNullOrFalse([Lorg/h2/value/Value;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_5

    :cond_d
    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/Select;->keepOnlyDistinct([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_5

    :cond_e
    return-void
.end method

.method private queryGroupSorted(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LazyResult;
    .locals 2

    new-instance v0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-direct {v0, p0, v1, p1}, Lorg/h2/command/dml/Select$LazyResultGroupSorted;-><init>(Lorg/h2/command/dml/Select;[Lorg/h2/expression/Expression;I)V

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/h2/result/LazyResult;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/h2/result/LazyResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private queryQuick(ILorg/h2/result/ResultTarget;)V
    .locals 4

    new-array v0, p1, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    return-void
.end method

.method private resetJoinBatchAfterQuery()V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/command/dml/Select;->getJoinBatch()Lorg/h2/table/JoinBatch;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/JoinBatch;->reset(Z)V

    :cond_0
    return-void
.end method

.method private setEvaluatableRecursive(Lorg/h2/table/TableFilter;)V
    .locals 3

    :goto_0
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p1, p1, v0}, Lorg/h2/table/TableFilter;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getNestedJoin()Lorg/h2/table/TableFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lorg/h2/command/dml/Select;->setEvaluatableRecursive(Lorg/h2/table/TableFilter;)V

    :cond_1
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isJoinOuterIndirect()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->removeJoinCondition()V

    :goto_1
    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Select;->addCondition(Lorg/h2/expression/Expression;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->removeJoinCondition()V

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    const v0, 0x16018

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getFilterCondition()Lorg/h2/expression/Expression;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->removeFilterCondition()V

    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Select;->addCondition(Lorg/h2/expression/Expression;)V

    :cond_5
    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1, v0}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public addCondition(Lorg/h2/expression/Expression;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/h2/expression/ConditionAndOr;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v0}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    :goto_0
    return-void
.end method

.method public addGlobalCondition(Lorg/h2/expression/Parameter;II)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/h2/command/dml/Query;->addParameter(Lorg/h2/expression/Parameter;)V

    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->QUERY_COMPARABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, p3, v0, p1}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object p3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/16 v0, 0x10

    invoke-direct {v1, p3, v0, p1, p1}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    :goto_0
    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Comparison;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iget-boolean p3, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    const/4 p3, 0x0

    :goto_1
    iget-object v1, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    if-ge p3, v2, :cond_2

    aget v1, v1, p3

    if-ne v1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_5

    iget p3, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-ltz p3, :cond_3

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/h2/expression/Expression;

    iput-object p3, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    :cond_3
    iget-object p3, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    if-nez p3, :cond_4

    iput-object p1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    goto :goto_3

    :cond_4
    new-instance v1, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {v1, v0, p3, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    :cond_5
    :goto_3
    if-eqz p2, :cond_8

    :cond_6
    iget-object p2, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-nez p2, :cond_7

    iput-object p1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    goto :goto_4

    :cond_7
    new-instance p3, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {p3, v0, p2, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object p3, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    :cond_8
    :goto_4
    return-void
.end method

.method public addTableFilter(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public allowGlobalConditions()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public fireBeforeSelectTriggers()V
    .locals 6

    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/TableFilter;

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    return v0
.end method

.method public getCost()D
    .locals 2

    iget-wide v0, p0, Lorg/h2/command/dml/Select;->cost:D

    return-wide v0
.end method

.method public getCurrentGroup()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/h2/expression/Expression;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCurrentGroupRowId()I
    .locals 1

    iget v0, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    return v0
.end method

.method public getExpressions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupBy()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHaving()Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getJoinBatch()Lorg/h2/table/JoinBatch;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/command/dml/Select;->getTopTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getJoinBatch()Lorg/h2/table/JoinBatch;

    move-result-object v0

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/expression/Expression;

    new-instance v1, Lorg/h2/util/StatementBuilder;

    invoke-direct {v1}, Lorg/h2/util/StatementBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ","

    const-string v5, "\n"

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->isView()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v3

    check-cast v7, Lorg/h2/table/TableView;

    invoke-virtual {v7}, Lorg/h2/table/TableView;->isRecursive()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "WITH RECURSIVE "

    invoke-virtual {v1, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v7

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    invoke-virtual {v3}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v7

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v9, v7, v6

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const-string v4, ") AS "

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    const-string v2, "SELECT"

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-boolean v2, p0, Lorg/h2/command/dml/Query;->distinct:Z

    if-eqz v2, :cond_3

    const-string v2, " DISTINCT"

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    if-ge v2, v3, :cond_4

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    invoke-static {v3, v7, v6}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v2, "\nFROM "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    const/4 v3, 0x1

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    add-int/lit8 v7, v4, 0x1

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2, v4}, Lorg/h2/table/TableFilter;->getPlanSQL(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_7

    :cond_6
    move v4, v7

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/table/TableFilter;

    :cond_8
    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    add-int/lit8 v8, v4, 0x1

    if-lez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v7, v4}, Lorg/h2/table/TableFilter;->getPlanSQL(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v7}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v7

    move v4, v8

    if-nez v7, :cond_8

    goto :goto_5

    :cond_a
    :goto_7
    iget-object v2, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v2, :cond_b

    const-string v2, "\nWHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_b
    iget-object v2, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    const-string v3, "\nGROUP BY "

    const-string v4, ", "

    if-eqz v2, :cond_c

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v5, v2

    :goto_8
    if-ge v6, v5, :cond_c

    aget v7, v2, v6

    aget-object v7, v0, v7

    invoke-virtual {v7}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v7

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Expression;

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_9

    :cond_d
    iget-object v2, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    const-string v3, "\nHAVING "

    if-eqz v2, :cond_e

    :goto_a
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_b

    :cond_e
    iget v2, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-ltz v2, :cond_f

    aget-object v2, v0, v2

    goto :goto_a

    :cond_f
    :goto_b
    iget-object v2, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    const-string v3, "\nORDER BY "

    if-eqz v2, :cond_10

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    iget v6, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    invoke-virtual {v5, v0, v6}, Lorg/h2/result/SortOrder;->getSQL([Lorg/h2/expression/Expression;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_10
    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/command/dml/SelectOrderBy;

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/command/dml/SelectOrderBy;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_c

    :cond_11
    iget-object v0, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_12

    const-string v0, "\nLIMIT "

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v0, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_12

    const-string v0, " OFFSET "

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_12
    iget-object v0, p0, Lorg/h2/command/dml/Query;->sampleSizeExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_13

    const-string v0, "\nSAMPLE_SIZE "

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/dml/Query;->sampleSizeExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_13
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    if-eqz v0, :cond_14

    const-string v0, "\nFOR UPDATE"

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_14
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-eqz v0, :cond_15

    const-string v0, "\n/* direct lookup */"

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_15
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isDistinctQuery:Z

    if-eqz v0, :cond_16

    const-string v0, "\n/* distinct */"

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_16
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    if-eqz v0, :cond_17

    const-string v0, "\n/* index sorted */"

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_17
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isGroupSortedQuery:Z

    if-eqz v0, :cond_18

    const-string v0, "\n/* group sorted */"

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_18
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortOrder()Lorg/h2/result/SortOrder;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    return-object v0
.end method

.method public getTables()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/TableFilter;

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTopFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTopTableFilter()Lorg/h2/table/TableFilter;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public hasOrder()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init()V
    .locals 15

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->checkInit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/dml/Select;->expandColumnList()V

    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v7, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v5, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    iget v8, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    iget-boolean v9, p0, Lorg/h2/command/dml/Query;->distinct:Z

    iget-object v10, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v4 .. v10}, Lorg/h2/command/dml/Query;->initOrder(Lorg/h2/engine/Session;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLjava/util/ArrayList;)V

    :cond_4
    iget-object v3, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lorg/h2/command/dml/Select;->distinctColumnCount:I

    iget-object v3, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    iget-object v6, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    iput-object v1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    goto :goto_3

    :cond_5
    iput v4, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    :goto_3
    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    iget-object v6, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v8, v6, [I

    iput-object v8, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_c

    iget-object v9, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/expression/Expression;

    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v7, :cond_7

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v3, v12, v10}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    const/4 v11, -0x1

    :goto_6
    if-gez v11, :cond_a

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v7, :cond_a

    iget-object v13, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/h2/expression/Expression;

    invoke-virtual {v13}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v10, v14}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v10, v13}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    :goto_8
    move v11, v12

    goto :goto_9

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_a
    :goto_9
    if-gez v11, :cond_b

    iget-object v10, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    aput v10, v11, v8

    iget-object v10, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    iget-object v9, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    aput v11, v9, v8

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    iget-object v0, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_d

    aget v6, v0, v4

    iget-object v7, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    aput-boolean v5, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_d
    iput-object v1, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    :cond_e
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/TableFilter;

    invoke-virtual {p0, v1, v2}, Lorg/h2/command/dml/Select;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    goto :goto_c

    :cond_f
    iget v0, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-ltz v0, :cond_10

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/Expression;

    new-instance v1, Lorg/h2/command/dml/SelectListColumnResolver;

    invoke-direct {v1, p0}, Lorg/h2/command/dml/SelectListColumnResolver;-><init>(Lorg/h2/command/dml/Select;)V

    invoke-virtual {v0, v1, v2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_10
    iput-boolean v5, p0, Lorg/h2/command/dml/Select;->checkInit:Z

    return-void
.end method

.method public isCacheable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    iget-object v3, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/h2/expression/ExpressionVisitor;->addDependency(Lorg/h2/engine/DbObject;)V

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getDependencies()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/table/Table;->addDependencies(Ljava/util/HashSet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    iget-object v3, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->getMaxDataModificationId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/h2/expression/ExpressionVisitor;->addDataModificationId(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->optimizeEvaluatableSubqueries:Z

    if-nez v0, :cond_6

    return v2

    :cond_3
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v3, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->isDeterministic()Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->incrementQueryLevel(I)Lorg/h2/expression/ExpressionVisitor;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_8

    iget-object v4, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    :cond_9
    if-eqz v0, :cond_a

    iget-object v1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    move v2, v0

    :goto_6
    return v2
.end method

.method public isQuickAggregateQuery()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    sget-object v0, Lorg/h2/expression/ExpressionVisitor;->READONLY_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Select;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    return v0
.end method

.method public isUnion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_1
    return-void
.end method

.method public prepare()V
    .locals 10

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isPrepared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->checkInit:Z

    if-nez v0, :cond_1

    const-string v0, "not initialized"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/command/dml/Query;->prepareOrder(Ljava/util/ArrayList;I)Lorg/h2/result/SortOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/TableFilter;

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->isJoinOuterIndirect()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, v2}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-nez v1, :cond_6

    iget v1, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-gez v1, :cond_6

    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/TableFilter;

    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ExpressionVisitor;->getOptimizableVisitor(Lorg/h2/table/Table;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Select;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    :cond_6
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->isParsingView()Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/h2/command/dml/Select;->preparePlan(Z)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/h2/command/dml/Select;->cost:D

    iget-boolean v1, p0, Lorg/h2/command/dml/Query;->distinct:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->optimizeDistinct:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    instance-of v3, v1, Lorg/h2/expression/ExpressionColumn;

    if-eqz v3, :cond_a

    check-cast v1, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v1}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v3

    iget-object v4, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v4}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lorg/h2/table/Table;->getIndexForColumn(Lorg/h2/table/Column;ZZ)Lorg/h2/index/Index;

    move-result-object v1

    if-eqz v1, :cond_a

    const/16 v4, 0x32

    if-eq v3, v4, :cond_a

    const/16 v4, 0x14

    if-ge v3, v4, :cond_a

    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v3

    aget-object v3, v3, v0

    iget v3, v3, Lorg/h2/table/IndexColumn;->sortType:I

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v4}, Lorg/h2/table/TableFilter;->getIndex()Lorg/h2/index/Index;

    move-result-object v4

    invoke-interface {v1}, Lorg/h2/index/Index;->canFindNext()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v3, :cond_a

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isScan()Z

    move-result v3

    if-nez v3, :cond_8

    if-ne v1, v4, :cond_a

    :cond_8
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isHash()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v3

    array-length v3, v3

    if-le v3, v2, :cond_a

    :cond_9
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v3, v1}, Lorg/h2/table/TableFilter;->setIndex(Lorg/h2/index/Index;)V

    iput-boolean v2, p0, Lorg/h2/command/dml/Select;->isDistinctQuery:Z

    :cond_a
    iget-object v1, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-nez v1, :cond_10

    invoke-direct {p0}, Lorg/h2/command/dml/Select;->getSortIndex()Lorg/h2/index/Index;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getIndex()Lorg/h2/index/Index;

    move-result-object v3

    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/index/IndexType;->isScan()Z

    move-result v4

    if-nez v4, :cond_f

    if-ne v3, v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    array-length v4, v4

    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v5

    array-length v5, v5

    if-lt v4, v5, :cond_10

    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v3

    const/4 v5, 0x0

    :goto_3
    array-length v6, v3

    if-ge v0, v6, :cond_e

    aget-object v6, v4, v0

    iget-object v7, v6, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    aget-object v8, v3, v0

    iget-object v9, v8, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    if-eq v7, v9, :cond_c

    goto :goto_6

    :cond_c
    iget v6, v6, Lorg/h2/table/IndexColumn;->sortType:I

    iget v7, v8, Lorg/h2/table/IndexColumn;->sortType:I

    if-eq v6, v7, :cond_d

    const/4 v5, 0x1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    if-eqz v5, :cond_10

    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->setIndex(Lorg/h2/index/Index;)V

    :goto_4
    iput-boolean v2, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    goto :goto_6

    :cond_f
    :goto_5
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->setIndex(Lorg/h2/index/Index;)V

    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->hasInComparisons()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_4

    :cond_10
    :goto_6
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/h2/command/dml/Select;->getGroupByExpressionCount()I

    move-result v0

    if-lez v0, :cond_12

    invoke-direct {p0}, Lorg/h2/command/dml/Select;->getGroupSortedIndex()Lorg/h2/index/Index;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getIndex()Lorg/h2/index/Index;

    move-result-object v1

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isScan()Z

    move-result v3

    if-nez v3, :cond_11

    if-ne v1, v0, :cond_12

    :cond_11
    iget-object v1, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1, v0}, Lorg/h2/table/TableFilter;->setIndex(Lorg/h2/index/Index;)V

    iput-boolean v2, p0, Lorg/h2/command/dml/Select;->isGroupSortedQuery:Z

    :cond_12
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/command/dml/Select;->expressionArray:[Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-boolean v2, p0, Lorg/h2/command/dml/Select;->isPrepared:Z

    return-void
.end method

.method public prepareJoinBatch()V
    .locals 4

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/command/dml/Select;->getTopTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getNestedJoin()Lorg/h2/table/TableFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/table/TableFilter;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3, v2, v0, v1}, Lorg/h2/table/TableFilter;->prepareJoinBatch(Lorg/h2/table/JoinBatch;[Lorg/h2/table/TableFilter;I)Lorg/h2/table/JoinBatch;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 4

    new-instance v0, Lorg/h2/result/LocalResult;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressionArray:[Lorg/h2/expression/Expression;

    iget v3, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->done()V

    return-object v0
.end method

.method public queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;
    .locals 9

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iget-object v1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    :goto_0
    if-gez p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    if-ltz v0, :cond_3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->isLazyQueryExecution()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/h2/command/dml/Select;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v5

    iget-boolean v5, v5, Lorg/h2/engine/DbSettings;->optimizeInsertFromSelect:Z

    if-nez v5, :cond_6

    :cond_5
    invoke-direct {p0, v4}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v5

    goto :goto_3

    :cond_6
    move-object v5, v4

    :goto_3
    iget-object v6, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lorg/h2/command/dml/Query;->distinct:Z

    if-eqz v6, :cond_8

    :cond_7
    invoke-direct {p0, v5}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v5, v6}, Lorg/h2/result/LocalResult;->setSortOrder(Lorg/h2/result/SortOrder;)V

    :cond_8
    iget-boolean v6, p0, Lorg/h2/command/dml/Query;->distinct:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lorg/h2/command/dml/Select;->isDistinctQuery:Z

    if-nez v6, :cond_9

    invoke-direct {p0, v5}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/result/LocalResult;->setDistinct()V

    :cond_9
    iget-boolean v6, p0, Lorg/h2/command/dml/Query;->randomAccessResult:Z

    if-eqz v6, :cond_a

    invoke-direct {p0, v5}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v5

    :cond_a
    iget-boolean v6, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lorg/h2/command/dml/Select;->isGroupSortedQuery:Z

    if-nez v6, :cond_b

    invoke-direct {p0, v5}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v5

    :cond_b
    if-nez v0, :cond_d

    if-gez p1, :cond_c

    iget-object v6, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v6, :cond_d

    :cond_c
    invoke-direct {p0, v5}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v5

    :cond_d
    iget-object v6, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    iget-object v7, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7}, Lorg/h2/table/TableFilter;->startQuery(Lorg/h2/engine/Session;)V

    iget-object v6, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v6}, Lorg/h2/table/TableFilter;->reset()V

    iget-boolean v6, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    if-eqz v6, :cond_e

    iget-boolean v6, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    if-nez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    :goto_4
    iget-boolean v7, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    if-eqz v7, :cond_13

    iget-boolean v7, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-nez v7, :cond_12

    iget-boolean v7, p0, Lorg/h2/command/dml/Query;->distinct:Z

    if-nez v7, :cond_11

    iget-boolean v7, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-nez v7, :cond_10

    iget-object v7, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v7}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v7

    if-nez v7, :cond_f

    goto :goto_5

    :cond_f
    const-string p1, "MVCC=TRUE && FOR UPDATE && JOIN"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_10
    const-string p1, "MVCC=TRUE && FOR UPDATE && AGGREGATE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_11
    const-string p1, "MVCC=TRUE && FOR UPDATE && DISTINCT"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_12
    const-string p1, "MVCC=TRUE && FOR UPDATE && GROUP"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_13
    :goto_5
    iget-object v7, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    iget-object v8, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v7, v8, v6, v6}, Lorg/h2/table/TableFilter;->lock(Lorg/h2/engine/Session;ZZ)V

    if-eqz v5, :cond_14

    move-object v6, v5

    goto :goto_6

    :cond_14
    move-object v6, p2

    :goto_6
    if-nez v6, :cond_15

    const/4 v1, 0x1

    :cond_15
    and-int/2addr v0, v1

    if-eqz p1, :cond_1b

    :try_start_0
    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-eqz v1, :cond_16

    invoke-direct {p0, v3, v6}, Lorg/h2/command/dml/Select;->queryQuick(ILorg/h2/result/ResultTarget;)V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_9

    :cond_16
    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isGroupSortedQuery:Z

    if-eqz v1, :cond_17

    invoke-direct {p0, v3, v6}, Lorg/h2/command/dml/Select;->queryGroupSorted(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LazyResult;

    move-result-object v1

    goto :goto_8

    :cond_17
    invoke-direct {p0, v3, v5}, Lorg/h2/command/dml/Select;->queryGroup(ILorg/h2/result/LocalResult;)V

    goto :goto_7

    :cond_18
    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isDistinctQuery:Z

    if-eqz v1, :cond_19

    int-to-long v1, p1

    invoke-direct {p0, v6, v1, v2}, Lorg/h2/command/dml/Select;->queryDistinct(Lorg/h2/result/ResultTarget;J)V

    :goto_7
    move-object v1, v4

    goto :goto_8

    :cond_19
    int-to-long v1, p1

    invoke-direct {p0, v3, v6, v1, v2}, Lorg/h2/command/dml/Select;->queryFlat(ILorg/h2/result/ResultTarget;J)Lorg/h2/result/LazyResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    if-nez v0, :cond_1c

    invoke-direct {p0}, Lorg/h2/command/dml/Select;->resetJoinBatchAfterQuery()V

    goto :goto_a

    :goto_9
    if-nez v0, :cond_1a

    invoke-direct {p0}, Lorg/h2/command/dml/Select;->resetJoinBatchAfterQuery()V

    :cond_1a
    throw p1

    :cond_1b
    move-object v1, v4

    :cond_1c
    :goto_a
    if-eqz v1, :cond_1e

    if-lez p1, :cond_1d

    invoke-virtual {v1, p1}, Lorg/h2/result/LazyResult;->setLimit(I)V

    :cond_1d
    return-object v1

    :cond_1e
    iget-object v0, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/h2/result/LocalResult;->setOffset(I)V

    :cond_1f
    if-ltz p1, :cond_20

    invoke-virtual {v5, p1}, Lorg/h2/result/LocalResult;->setLimit(I)V

    :cond_20
    if-eqz v5, :cond_23

    invoke-virtual {v5}, Lorg/h2/result/LocalResult;->done()V

    if-eqz p2, :cond_22

    :goto_b
    invoke-virtual {v5}, Lorg/h2/result/LocalResult;->next()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-virtual {v5}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    goto :goto_b

    :cond_21
    invoke-virtual {v5}, Lorg/h2/result/LocalResult;->close()V

    return-object v4

    :cond_22
    return-object v5

    :cond_23
    return-object v4
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 2

    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_1
    return-void
.end method

.method public setExpressions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    return-void
.end method

.method public setForUpdate(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->selectForUpdateMvcc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    :cond_0
    return-void
.end method

.method public setGroupBy(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    return-void
.end method

.method public setGroupQuery()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    return-void
.end method

.method public setHaving(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setOrder(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_2
    return-void
.end method
