.class final Lorg/h2/table/JoinBatch$QueryRunner;
.super Lorg/h2/table/JoinBatch$QueryRunnerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QueryRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/table/JoinBatch;

.field topFutureCursor:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/table/JoinBatch;Lorg/h2/index/ViewIndex;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/JoinBatch$QueryRunner;->this$0:Lorg/h2/table/JoinBatch;

    invoke-direct {p0, p2}, Lorg/h2/table/JoinBatch$QueryRunnerBase;-><init>(Lorg/h2/index/ViewIndex;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunner;->topFutureCursor:Ljava/util/concurrent/Future;

    return-void
.end method

.method public resetViewTopFutureCursorAfterQuery()V
    .locals 2

    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunner;->this$0:Lorg/h2/table/JoinBatch;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/h2/table/JoinBatch;->viewTopFutureCursor:Ljava/util/concurrent/Future;

    return-void
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$QueryRunner;->run()Lorg/h2/index/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/h2/index/Cursor;
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunner;->topFutureCursor:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    sget-object v0, Lorg/h2/table/JoinBatch;->EMPTY_CURSOR:Lorg/h2/index/Cursor;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-virtual {v0}, Lorg/h2/index/ViewIndex;->getSession()Lorg/h2/engine/Session;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->first:Lorg/h2/result/SearchRow;

    iget-object v3, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->last:Lorg/h2/result/SearchRow;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/h2/index/ViewIndex;->setupQueryParameters(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunner;->this$0:Lorg/h2/table/JoinBatch;

    iget-object v1, p0, Lorg/h2/table/JoinBatch$QueryRunner;->topFutureCursor:Ljava/util/concurrent/Future;

    iput-object v1, v0, Lorg/h2/table/JoinBatch;->viewTopFutureCursor:Ljava/util/concurrent/Future;

    :try_start_0
    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-virtual {v0}, Lorg/h2/index/ViewIndex;->getQuery()Lorg/h2/command/dml/Query;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$QueryRunner;->resetViewTopFutureCursorAfterQuery()V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->newCursor(Lorg/h2/result/ResultInterface;)Lorg/h2/index/ViewCursor;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$QueryRunner;->resetViewTopFutureCursorAfterQuery()V

    throw v0
.end method
