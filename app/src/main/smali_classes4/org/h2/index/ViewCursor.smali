.class public Lorg/h2/index/ViewCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private current:Lorg/h2/result/Row;

.field private final first:Lorg/h2/result/SearchRow;

.field private final index:Lorg/h2/index/ViewIndex;

.field private final last:Lorg/h2/result/SearchRow;

.field private final result:Lorg/h2/result/ResultInterface;

.field private final table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Lorg/h2/index/ViewIndex;Lorg/h2/result/ResultInterface;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/ViewCursor;->table:Lorg/h2/table/Table;

    iput-object p1, p0, Lorg/h2/index/ViewCursor;->index:Lorg/h2/index/ViewIndex;

    iput-object p2, p0, Lorg/h2/index/ViewCursor;->result:Lorg/h2/result/ResultInterface;

    iput-object p3, p0, Lorg/h2/index/ViewCursor;->first:Lorg/h2/result/SearchRow;

    iput-object p4, p0, Lorg/h2/index/ViewCursor;->last:Lorg/h2/result/SearchRow;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/ViewCursor;->current:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/ViewCursor;->current:Lorg/h2/result/Row;

    return-object v0
.end method

.method public next()Z
    .locals 5

    :goto_0
    iget-object v0, p0, Lorg/h2/index/ViewCursor;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/ViewCursor;->index:Lorg/h2/index/ViewIndex;

    invoke-virtual {v0}, Lorg/h2/index/ViewIndex;->isRecursive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/ViewCursor;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/h2/index/ViewCursor;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->close()V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/ViewCursor;->current:Lorg/h2/result/Row;

    return v1

    :cond_1
    iget-object v0, p0, Lorg/h2/index/ViewCursor;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/ViewCursor;->current:Lorg/h2/result/Row;

    iget-object v0, p0, Lorg/h2/index/ViewCursor;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/index/ViewCursor;->current:Lorg/h2/result/Row;

    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_3

    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    goto :goto_3

    :cond_2
    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :goto_3
    iget-object v4, p0, Lorg/h2/index/ViewCursor;->current:Lorg/h2/result/Row;

    invoke-interface {v4, v1, v3}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/h2/index/ViewCursor;->first:Lorg/h2/result/SearchRow;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/h2/index/ViewCursor;->index:Lorg/h2/index/ViewIndex;

    iget-object v2, p0, Lorg/h2/index/ViewCursor;->current:Lorg/h2/result/Row;

    invoke-virtual {v1, v2, v0}, Lorg/h2/index/BaseIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v0

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/h2/index/ViewCursor;->last:Lorg/h2/result/SearchRow;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/h2/index/ViewCursor;->index:Lorg/h2/index/ViewIndex;

    iget-object v2, p0, Lorg/h2/index/ViewCursor;->current:Lorg/h2/result/Row;

    invoke-virtual {v1, v2, v0}, Lorg/h2/index/BaseIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public previous()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
