.class Lorg/h2/table/JoinBatch$QueryRunnerUnion;
.super Lorg/h2/table/JoinBatch$QueryRunnerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryRunnerUnion"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private batchUnion:Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;

.field topFutureCursors:[Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;)V
    .locals 1

    iget-object v0, p1, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-direct {p0, v0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;-><init>(Lorg/h2/index/ViewIndex;)V

    iput-object p1, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->batchUnion:Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;

    iget-object p1, p1, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/concurrent/Future;

    iput-object p1, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->topFutureCursors:[Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    invoke-super {p0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->topFutureCursors:[Ljava/util/concurrent/Future;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetViewTopFutureCursorAfterQuery()V
    .locals 5

    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->batchUnion:Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;

    iget-object v0, v0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->joinBatches:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/JoinBatch;

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/h2/table/JoinBatch;->viewTopFutureCursor:Ljava/util/concurrent/Future;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->run()Lorg/h2/index/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/h2/index/Cursor;
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-virtual {v0}, Lorg/h2/index/ViewIndex;->getSession()Lorg/h2/engine/Session;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->first:Lorg/h2/result/SearchRow;

    iget-object v3, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->last:Lorg/h2/result/SearchRow;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/h2/index/ViewIndex;->setupQueryParameters(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->batchUnion:Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;

    iget-object v0, v0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->joinBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/JoinBatch;

    iget-object v5, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->topFutureCursors:[Ljava/util/concurrent/Future;

    aget-object v5, v5, v3

    iput-object v5, v4, Lorg/h2/table/JoinBatch;->viewTopFutureCursor:Ljava/util/concurrent/Future;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-virtual {v0}, Lorg/h2/index/ViewIndex;->getQuery()Lorg/h2/command/dml/Query;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->resetViewTopFutureCursorAfterQuery()V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->newCursor(Lorg/h2/result/ResultInterface;)Lorg/h2/index/ViewCursor;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->resetViewTopFutureCursorAfterQuery()V

    throw v0
.end method
