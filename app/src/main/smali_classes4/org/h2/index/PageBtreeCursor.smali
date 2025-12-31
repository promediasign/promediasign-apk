.class public Lorg/h2/index/PageBtreeCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private current:Lorg/h2/index/PageBtreeLeaf;

.field private currentRow:Lorg/h2/result/Row;

.field private currentSearchRow:Lorg/h2/result/SearchRow;

.field private i:I

.field private final index:Lorg/h2/index/PageBtreeIndex;

.field private final last:Lorg/h2/result/SearchRow;

.field private final session:Lorg/h2/engine/Session;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/index/PageBtreeIndex;Lorg/h2/result/SearchRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/index/PageBtreeCursor;->session:Lorg/h2/engine/Session;

    iput-object p2, p0, Lorg/h2/index/PageBtreeCursor;->index:Lorg/h2/index/PageBtreeIndex;

    iput-object p3, p0, Lorg/h2/index/PageBtreeCursor;->last:Lorg/h2/result/SearchRow;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 5

    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/index/PageBtreeCursor;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtreeCursor;->session:Lorg/h2/engine/Session;

    invoke-interface {v0}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/h2/index/PageBtreeIndex;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    return-object v0
.end method

.method public next()Z
    .locals 5

    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeLeaf;->getEntryCount()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    invoke-virtual {v0, p0}, Lorg/h2/index/PageBtreeLeaf;->nextPage(Lorg/h2/index/PageBtreeCursor;)V

    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    iget v2, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    invoke-virtual {v0, v2}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    iget-object v3, p0, Lorg/h2/index/PageBtreeCursor;->last:Lorg/h2/result/SearchRow;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/h2/index/PageBtreeCursor;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v4, v0, v3}, Lorg/h2/index/BaseIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v0

    if-lez v0, :cond_2

    iput-object v2, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    return v1

    :cond_2
    iget v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    return v1
.end method

.method public previous()Z
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    if-gez v2, :cond_1

    invoke-virtual {v0, p0}, Lorg/h2/index/PageBtreeLeaf;->previousPage(Lorg/h2/index/PageBtreeCursor;)V

    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    iget v1, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    iget v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    return v1
.end method

.method public setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V
    .locals 0

    iput-object p1, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    iput p2, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    return-void
.end method
