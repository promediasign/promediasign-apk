.class Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/MVSecondaryIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MVStoreCursor"
.end annotation


# instance fields
.field private current:Lorg/h2/value/Value;

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final last:Lorg/h2/result/SearchRow;

.field private row:Lorg/h2/result/Row;

.field private searchRow:Lorg/h2/result/SearchRow;

.field private final session:Lorg/h2/engine/Session;

.field final synthetic this$0:Lorg/h2/mvstore/db/MVSecondaryIndex;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/db/MVSecondaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/result/SearchRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/Iterator<",
            "Lorg/h2/value/Value;",
            ">;",
            "Lorg/h2/result/SearchRow;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->this$0:Lorg/h2/mvstore/db/MVSecondaryIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->session:Lorg/h2/engine/Session;

    iput-object p3, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->it:Ljava/util/Iterator;

    iput-object p4, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->last:Lorg/h2/result/SearchRow;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 5

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->this$0:Lorg/h2/mvstore/db/MVSecondaryIndex;

    iget-object v1, v1, Lorg/h2/mvstore/db/MVSecondaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    iget-object v2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->session:Lorg/h2/engine/Session;

    invoke-interface {v0}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/h2/mvstore/db/MVTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->searchRow:Lorg/h2/result/SearchRow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->current:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->this$0:Lorg/h2/mvstore/db/MVSecondaryIndex;

    check-cast v0, Lorg/h2/value/ValueArray;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/db/MVSecondaryIndex;->convertToSearchRow(Lorg/h2/value/ValueArray;)Lorg/h2/result/SearchRow;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->searchRow:Lorg/h2/result/SearchRow;

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->searchRow:Lorg/h2/result/SearchRow;

    return-object v0
.end method

.method public next()Z
    .locals 4

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/Value;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->current:Lorg/h2/value/Value;

    iput-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->searchRow:Lorg/h2/result/SearchRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->last:Lorg/h2/result/SearchRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->this$0:Lorg/h2/mvstore/db/MVSecondaryIndex;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->last:Lorg/h2/result/SearchRow;

    invoke-virtual {v0, v2, v3}, Lorg/h2/index/BaseIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v0

    if-lez v0, :cond_1

    iput-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->searchRow:Lorg/h2/result/SearchRow;

    iput-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->current:Lorg/h2/value/Value;

    :cond_1
    iput-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->current:Lorg/h2/value/Value;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public previous()Z
    .locals 1

    const-string v0, "previous"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
