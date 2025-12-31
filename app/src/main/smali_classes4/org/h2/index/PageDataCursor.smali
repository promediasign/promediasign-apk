.class Lorg/h2/index/PageDataCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private current:Lorg/h2/index/PageDataLeaf;

.field private delta:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field

.field private idx:I

.field private final maxKey:J

.field private final multiVersion:Z

.field private row:Lorg/h2/result/Row;

.field private final session:Lorg/h2/engine/Session;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/index/PageDataLeaf;IJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/h2/index/PageDataCursor;->current:Lorg/h2/index/PageDataLeaf;

    iput p3, p0, Lorg/h2/index/PageDataCursor;->idx:I

    iput-wide p4, p0, Lorg/h2/index/PageDataCursor;->maxKey:J

    iput-boolean p6, p0, Lorg/h2/index/PageDataCursor;->multiVersion:Z

    iput-object p1, p0, Lorg/h2/index/PageDataCursor;->session:Lorg/h2/engine/Session;

    if-eqz p6, :cond_0

    iget-object p1, p2, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getDelta()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageDataCursor;->delta:Ljava/util/Iterator;

    :cond_0
    return-void
.end method

.method private checkMax()Z
    .locals 7

    iget-object v1, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/h2/index/PageDataCursor;->maxKey:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/PageDataCursor;->current:Lorg/h2/index/PageDataLeaf;

    iget-object v0, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    const-wide v2, 0x7fffffffffffffffL

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lorg/h2/index/PageDataIndex;->getKey(Lorg/h2/result/SearchRow;JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/index/PageDataCursor;->maxKey:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    return v6

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v6
.end method

.method private nextRow()V
    .locals 2

    iget v0, p0, Lorg/h2/index/PageDataCursor;->idx:I

    iget-object v1, p0, Lorg/h2/index/PageDataCursor;->current:Lorg/h2/index/PageDataLeaf;

    invoke-virtual {v1}, Lorg/h2/index/PageDataLeaf;->getEntryCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/index/PageDataCursor;->current:Lorg/h2/index/PageDataLeaf;

    invoke-virtual {v0}, Lorg/h2/index/PageDataLeaf;->getNextPage()Lorg/h2/index/PageDataLeaf;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataCursor;->current:Lorg/h2/index/PageDataLeaf;

    const/4 v1, 0x0

    iput v1, p0, Lorg/h2/index/PageDataCursor;->idx:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataCursor;->current:Lorg/h2/index/PageDataLeaf;

    iget v1, p0, Lorg/h2/index/PageDataCursor;->idx:I

    invoke-virtual {v0, v1}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    iget v0, p0, Lorg/h2/index/PageDataCursor;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/index/PageDataCursor;->idx:I

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/index/PageDataCursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public next()Z
    .locals 2

    iget-boolean v0, p0, Lorg/h2/index/PageDataCursor;->multiVersion:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/index/PageDataCursor;->nextRow()V

    invoke-direct {p0}, Lorg/h2/index/PageDataCursor;->checkMax()Z

    move-result v0

    return v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/index/PageDataCursor;->delta:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/PageDataCursor;->delta:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageDataCursor;->delta:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/Row;

    iput-object v0, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    invoke-interface {v0}, Lorg/h2/result/Row;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    invoke-interface {v0}, Lorg/h2/result/Row;->getSessionId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageDataCursor;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/h2/index/PageDataCursor;->nextRow()V

    iget-object v0, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/h2/result/Row;->getSessionId()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/index/PageDataCursor;->row:Lorg/h2/result/Row;

    invoke-interface {v0}, Lorg/h2/result/Row;->getSessionId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageDataCursor;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getId()I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/h2/index/PageDataCursor;->checkMax()Z

    move-result v0

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
