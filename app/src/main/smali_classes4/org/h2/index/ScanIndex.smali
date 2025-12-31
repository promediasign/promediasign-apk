.class public Lorg/h2/index/ScanIndex;
.super Lorg/h2/index/BaseIndex;
.source "SourceFile"


# instance fields
.field private delta:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field

.field private firstFree:J

.field private rowCount:J

.field private rowCountDiff:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionRowCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 8

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/h2/index/ScanIndex;->firstFree:J

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/h2/index/ScanIndex;->sessionRowCount:Ljava/util/HashMap;

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lorg/h2/index/ScanIndex;->tableData:Lorg/h2/table/RegularTable;

    return-void
.end method

.method private incrementRowCount(II)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/h2/index/ScanIndex;->sessionRowCount:Ljava/util/HashMap;

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/h2/index/ScanIndex;->rowCountDiff:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/h2/index/ScanIndex;->rowCountDiff:I

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 6

    iget-wide v0, p0, Lorg/h2/index/ScanIndex;->firstFree:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/result/Row;

    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/h2/index/ScanIndex;->firstFree:J

    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/h2/result/Row;->setDeleted(Z)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    :cond_1
    iget-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/h2/index/ScanIndex;->incrementRowCount(II)V

    :cond_3
    iget-wide p1, p0, Lorg/h2/index/ScanIndex;->rowCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/index/ScanIndex;->rowCount:J

    return-void
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "SCAN"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public commit(ILorg/h2/result/Row;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, p2, v0}, Lorg/h2/index/ScanIndex;->incrementRowCount(II)V

    :cond_2
    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    new-instance p2, Lorg/h2/index/ScanCursor;

    iget-object p3, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p3

    invoke-direct {p2, p1, p0, p3}, Lorg/h2/index/ScanCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/ScanIndex;Z)V

    return-object p2
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    const-string p1, "SCAN"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)D"
        }
    .end annotation

    iget-object p1, p0, Lorg/h2/index/ScanIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getRowCountApproximation()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    add-long/2addr p1, p3

    long-to-double p1, p1

    return-wide p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelta()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextRow(Lorg/h2/result/Row;)Lorg/h2/result/Row;
    .locals 4

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    :cond_1
    :goto_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object p1, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    long-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/result/Row;

    invoke-interface {p1}, Lorg/h2/result/Row;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return-object p1
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tableScan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 0

    iget-object p1, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/result/Row;

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 4

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    iget-wide v2, p0, Lorg/h2/index/ScanIndex;->rowCount:J

    add-long/2addr v0, v2

    iget p1, p0, Lorg/h2/index/ScanIndex;->rowCountDiff:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/h2/index/ScanIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/index/ScanIndex;->rowCount:J

    return-wide v0
.end method

.method public isFirstColumn(Lorg/h2/table/Column;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/index/ScanIndex;->truncate(Lorg/h2/engine/Session;)V

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-nez v0, :cond_0

    iget-wide v4, p0, Lorg/h2/index/ScanIndex;->rowCount:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    const-wide/16 v4, -0x1

    :goto_0
    iput-wide v4, p0, Lorg/h2/index/ScanIndex;->firstFree:J

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v0

    iget-wide v4, p0, Lorg/h2/index/ScanIndex;->firstFree:J

    invoke-interface {v0, v4, v5}, Lorg/h2/result/SearchRow;->setKey(J)V

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v4

    iget-object v6, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_4

    iget-object v6, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    long-to-int v7, v4

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2, v1}, Lorg/h2/result/Row;->setDeleted(Z)V

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    :cond_1
    iget-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/index/ScanIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Lorg/h2/index/ScanIndex;->incrementRowCount(II)V

    :cond_3
    iget-wide p1, p0, Lorg/h2/index/ScanIndex;->rowCount:J

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/index/ScanIndex;->rowCount:J

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x16000

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/ScanIndex;->rows:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/h2/index/ScanIndex;->firstFree:J

    iget-object p1, p0, Lorg/h2/index/ScanIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getContainsLargeObject()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/index/ScanIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p1}, Lorg/h2/table/Table;->isPersistData()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    :cond_0
    iget-object p1, p0, Lorg/h2/index/ScanIndex;->tableData:Lorg/h2/table/RegularTable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/table/RegularTable;->setRowCount(J)V

    iput-wide v0, p0, Lorg/h2/index/ScanIndex;->rowCount:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/h2/index/ScanIndex;->rowCountDiff:I

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/index/ScanIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method
