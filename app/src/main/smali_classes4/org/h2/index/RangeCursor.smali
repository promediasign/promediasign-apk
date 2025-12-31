.class Lorg/h2/index/RangeCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private beforeFirst:Z

.field private current:J

.field private currentRow:Lorg/h2/result/Row;

.field private final end:J

.field private session:Lorg/h2/engine/Session;

.field private final start:J

.field private final step:J


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;JJ)V
    .locals 8

    .line 1
    const-wide/16 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/h2/index/RangeCursor;-><init>(Lorg/h2/engine/Session;JJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Session;JJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/index/RangeCursor;->session:Lorg/h2/engine/Session;

    iput-wide p2, p0, Lorg/h2/index/RangeCursor;->start:J

    iput-wide p4, p0, Lorg/h2/index/RangeCursor;->end:J

    iput-wide p6, p0, Lorg/h2/index/RangeCursor;->step:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/index/RangeCursor;->beforeFirst:Z

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/RangeCursor;->currentRow:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/RangeCursor;->currentRow:Lorg/h2/result/Row;

    return-object v0
.end method

.method public next()Z
    .locals 7

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/h2/index/RangeCursor;->beforeFirst:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lorg/h2/index/RangeCursor;->beforeFirst:Z

    iget-wide v3, p0, Lorg/h2/index/RangeCursor;->start:J

    :goto_0
    iput-wide v3, p0, Lorg/h2/index/RangeCursor;->current:J

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lorg/h2/index/RangeCursor;->current:J

    iget-wide v5, p0, Lorg/h2/index/RangeCursor;->step:J

    add-long/2addr v3, v5

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/h2/index/RangeCursor;->session:Lorg/h2/engine/Session;

    iget-wide v3, p0, Lorg/h2/index/RangeCursor;->current:J

    invoke-static {v3, v4}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v3

    new-array v4, v0, [Lorg/h2/value/Value;

    aput-object v3, v4, v2

    invoke-virtual {v1, v4, v0}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/index/RangeCursor;->currentRow:Lorg/h2/result/Row;

    iget-wide v3, p0, Lorg/h2/index/RangeCursor;->step:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    iget-wide v3, p0, Lorg/h2/index/RangeCursor;->current:J

    iget-wide v5, p0, Lorg/h2/index/RangeCursor;->end:J

    if-lez v1, :cond_2

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    :goto_2
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
