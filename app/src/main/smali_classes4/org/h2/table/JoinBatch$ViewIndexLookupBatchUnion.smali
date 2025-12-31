.class final Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;
.super Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewIndexLookupBatchUnion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase<",
        "Lorg/h2/table/JoinBatch$QueryRunnerUnion;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/JoinBatch$JoinFilter;",
            ">;"
        }
    .end annotation
.end field

.field joinBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/JoinBatch;",
            ">;"
        }
    .end annotation
.end field

.field private onlyBatchedQueries:Z


# direct methods
.method public constructor <init>(Lorg/h2/index/ViewIndex;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;-><init>(Lorg/h2/index/ViewIndex;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->onlyBatchedQueries:Z

    return-void
.end method

.method private collectJoinBatches(Lorg/h2/command/dml/Query;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->isUnion()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/h2/command/dml/SelectUnion;

    invoke-virtual {p1}, Lorg/h2/command/dml/SelectUnion;->getLeft()Lorg/h2/command/dml/Query;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->collectJoinBatches(Lorg/h2/command/dml/Query;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/command/dml/SelectUnion;->getRight()Lorg/h2/command/dml/Query;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->collectJoinBatches(Lorg/h2/command/dml/Query;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/h2/command/dml/Select;

    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->getJoinBatch()Lorg/h2/table/JoinBatch;

    move-result-object p1

    if-nez p1, :cond_2

    iput-boolean v2, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->onlyBatchedQueries:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Lorg/h2/table/JoinBatch;->getLookupBatch(I)Lorg/h2/index/IndexLookupBatch;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iput-boolean v1, p1, Lorg/h2/table/JoinBatch;->batchedSubQuery:Z

    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->joinBatches:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->joinBatches:Ljava/util/ArrayList;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->joinBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return v1
.end method


# virtual methods
.method public bridge synthetic collectSearchRows(Lorg/h2/table/JoinBatch$QueryRunnerBase;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/h2/table/JoinBatch$QueryRunnerUnion;

    invoke-virtual {p0, p1}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->collectSearchRows(Lorg/h2/table/JoinBatch$QueryRunnerUnion;)Z

    move-result p1

    return p1
.end method

.method public collectSearchRows(Lorg/h2/table/JoinBatch$QueryRunnerUnion;)Z
    .locals 5

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/JoinBatch$JoinFilter;

    invoke-virtual {v3}, Lorg/h2/table/JoinBatch$JoinFilter;->collectSearchRows()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->topFutureCursors:[Ljava/util/concurrent/Future;

    sget-object v4, Lorg/h2/table/JoinBatch;->EMPTY_FUTURE_CURSOR:Ljava/util/concurrent/Future;

    aput-object v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-boolean p1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->onlyBatchedQueries:Z

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public initialize()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-virtual {v0}, Lorg/h2/index/ViewIndex;->getQuery()Lorg/h2/command/dml/Query;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->collectJoinBatches(Lorg/h2/command/dml/Query;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->joinBatches:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBatchFull()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/JoinBatch$JoinFilter;

    invoke-virtual {v2}, Lorg/h2/table/JoinBatch$JoinFilter;->isBatchFull()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic newQueryRunner()Lorg/h2/table/JoinBatch$QueryRunnerBase;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->newQueryRunner()Lorg/h2/table/JoinBatch$QueryRunnerUnion;

    move-result-object v0

    return-object v0
.end method

.method public newQueryRunner()Lorg/h2/table/JoinBatch$QueryRunnerUnion;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;

    invoke-direct {v0, p0}, Lorg/h2/table/JoinBatch$QueryRunnerUnion;-><init>(Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;)V

    return-object v0
.end method

.method public startQueryRunners(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/JoinBatch$JoinFilter;

    invoke-virtual {v2}, Lorg/h2/table/JoinBatch$JoinFilter;->find()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    invoke-virtual {p0, v3}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->queryRunner(I)Lorg/h2/table/JoinBatch$QueryRunnerBase;

    move-result-object v5

    check-cast v5, Lorg/h2/table/JoinBatch$QueryRunnerUnion;

    iget-object v5, v5, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->topFutureCursors:[Ljava/util/concurrent/Future;

    aget-object v6, v5, v1

    if-nez v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    aput-object v4, v5, v1

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
