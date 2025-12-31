.class public Lorg/h2/index/IndexCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private alwaysFalse:Z

.field private cursor:Lorg/h2/index/Cursor;

.field private end:Lorg/h2/result/SearchRow;

.field private inColumn:Lorg/h2/table/Column;

.field private inList:[Lorg/h2/value/Value;

.field private inListIndex:I

.field private inResult:Lorg/h2/result/ResultInterface;

.field private inResultTested:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private index:Lorg/h2/index/Index;

.field private indexColumns:[Lorg/h2/table/IndexColumn;

.field private intersects:Lorg/h2/result/SearchRow;

.field private session:Lorg/h2/engine/Session;

.field private start:Lorg/h2/result/SearchRow;

.field private table:Lorg/h2/table/Table;

.field private final tableFilter:Lorg/h2/table/TableFilter;


# direct methods
.method public constructor <init>(Lorg/h2/table/TableFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/index/IndexCursor;->tableFilter:Lorg/h2/table/TableFilter;

    return-void
.end method

.method private canUseIndexForIn(Lorg/h2/table/Column;)Z
    .locals 3

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->inColumn:Lorg/h2/table/Column;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/h2/index/IndexCursor;->index:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    if-ne v0, p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private find(Lorg/h2/value/Value;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/h2/index/IndexCursor;->inColumn:Lorg/h2/table/Column;

    invoke-virtual {v0, p1}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->inColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/index/IndexCursor;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    :cond_0
    iget-object v1, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    invoke-interface {v1, v0, p1}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    iget-object p1, p0, Lorg/h2/index/IndexCursor;->index:Lorg/h2/index/Index;

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->tableFilter:Lorg/h2/table/TableFilter;

    iget-object v1, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    invoke-interface {p1, v0, v1, v1}, Lorg/h2/index/Index;->find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/IndexCursor;->cursor:Lorg/h2/index/Cursor;

    return-void
.end method

.method private getMax(Lorg/h2/value/Value;Lorg/h2/value/Value;Z)Lorg/h2/value/Value;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/h2/index/IndexCursor;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->optimizeIsNull:Z

    if-eqz v0, :cond_3

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_2

    return-object p2

    :cond_2
    if-ne p2, v0, :cond_3

    return-object p1

    :cond_3
    iget-object v0, p0, Lorg/h2/index/IndexCursor;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result v0

    if-nez v0, :cond_4

    return-object p1

    :cond_4
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p1, v1, :cond_5

    if-ne p2, v1, :cond_6

    :cond_5
    iget-object v1, p0, Lorg/h2/index/IndexCursor;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->optimizeIsNull:Z

    if-eqz v1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    if-nez p3, :cond_7

    neg-int v0, v0

    :cond_7
    if-lez v0, :cond_8

    goto :goto_0

    :cond_8
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private getSearchRow(Lorg/h2/result/SearchRow;ILorg/h2/value/Value;Z)Lorg/h2/result/SearchRow;
    .locals 1

    .line 2
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/index/IndexCursor;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lorg/h2/index/IndexCursor;->getMax(Lorg/h2/value/Value;Lorg/h2/value/Value;Z)Lorg/h2/value/Value;

    move-result-object p3

    :goto_0
    if-gez p2, :cond_1

    invoke-virtual {p3}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lorg/h2/result/SearchRow;->setKey(J)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2, p3}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    :goto_1
    return-object p1
.end method

.method private getSpatialSearchRow(Lorg/h2/result/SearchRow;ILorg/h2/value/Value;)Lorg/h2/result/SearchRow;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/index/IndexCursor;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueGeometry;

    invoke-virtual {p3, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p3

    check-cast p3, Lorg/h2/value/ValueGeometry;

    invoke-virtual {p3, v0}, Lorg/h2/value/ValueGeometry;->getEnvelopeUnion(Lorg/h2/value/ValueGeometry;)Lorg/h2/value/Value;

    move-result-object p3

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    invoke-virtual {p3}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lorg/h2/result/SearchRow;->setKey(J)V

    goto :goto_1

    :cond_2
    invoke-interface {p1, p2, p3}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    :goto_1
    return-object p1
.end method

.method private nextCursor()V
    .locals 3

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->inList:[Lorg/h2/value/Value;

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/h2/index/IndexCursor;->inListIndex:I

    iget-object v1, p0, Lorg/h2/index/IndexCursor;->inList:[Lorg/h2/value/Value;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/h2/index/IndexCursor;->inListIndex:I

    aget-object v0, v1, v0

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lorg/h2/index/IndexCursor;->find(Lorg/h2/value/Value;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/index/IndexCursor;->inResult:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/h2/index/IndexCursor;->inResult:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->inResult:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/h2/index/IndexCursor;->inColumn:Lorg/h2/table/Column;

    invoke-virtual {v1, v0}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/IndexCursor;->inResultTested:Ljava/util/HashSet;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->inResultTested:Ljava/util/HashSet;

    :cond_3
    iget-object v1, p0, Lorg/h2/index/IndexCursor;->inResultTested:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public find(Lorg/h2/engine/Session;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/IndexCondition;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/h2/index/IndexCursor;->prepare(Lorg/h2/engine/Session;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lorg/h2/index/IndexCursor;->inColumn:Lorg/h2/table/Column;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lorg/h2/index/IndexCursor;->alwaysFalse:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/h2/index/IndexCursor;->intersects:Lorg/h2/result/SearchRow;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/h2/index/IndexCursor;->index:Lorg/h2/index/Index;

    instance-of v0, p2, Lorg/h2/index/SpatialIndex;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/h2/index/SpatialIndex;

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->tableFilter:Lorg/h2/table/TableFilter;

    iget-object v1, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    iget-object v2, p0, Lorg/h2/index/IndexCursor;->end:Lorg/h2/result/SearchRow;

    invoke-interface {p2, v0, v1, v2, p1}, Lorg/h2/index/SpatialIndex;->findByGeometry(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/h2/index/IndexCursor;->cursor:Lorg/h2/index/Cursor;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/h2/index/IndexCursor;->index:Lorg/h2/index/Index;

    iget-object p2, p0, Lorg/h2/index/IndexCursor;->tableFilter:Lorg/h2/table/TableFilter;

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    iget-object v1, p0, Lorg/h2/index/IndexCursor;->end:Lorg/h2/result/SearchRow;

    invoke-interface {p1, p2, v0, v1}, Lorg/h2/index/Index;->find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public get()Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->cursor:Lorg/h2/index/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()Lorg/h2/result/SearchRow;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->end:Lorg/h2/result/SearchRow;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/index/IndexCursor;->cursor:Lorg/h2/index/Cursor;

    invoke-interface {v0}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Lorg/h2/result/SearchRow;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    return-object v0
.end method

.method public isAlwaysFalse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/IndexCursor;->alwaysFalse:Z

    return v0
.end method

.method public next()Z
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/h2/index/IndexCursor;->cursor:Lorg/h2/index/Cursor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/index/IndexCursor;->nextCursor()V

    iget-object v0, p0, Lorg/h2/index/IndexCursor;->cursor:Lorg/h2/index/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/index/IndexCursor;->cursor:Lorg/h2/index/Cursor;

    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/IndexCursor;->cursor:Lorg/h2/index/Cursor;

    goto :goto_0
.end method

.method public prepare(Lorg/h2/engine/Session;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/IndexCondition;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/index/IndexCursor;->session:Lorg/h2/engine/Session;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/index/IndexCursor;->alwaysFalse:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->end:Lorg/h2/result/SearchRow;

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->inList:[Lorg/h2/value/Value;

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->inColumn:Lorg/h2/table/Column;

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->inResult:Lorg/h2/result/ResultInterface;

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->inResultTested:Ljava/util/HashSet;

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->intersects:Lorg/h2/result/SearchRow;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_a

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/index/IndexCondition;

    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->isAlwaysFalse()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iput-boolean v6, p0, Lorg/h2/index/IndexCursor;->alwaysFalse:Z

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->getColumn()Lorg/h2/table/Column;

    move-result-object v5

    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->getCompareType()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_1

    iget-object v6, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/h2/index/IndexCursor;->end:Lorg/h2/result/SearchRow;

    if-nez v6, :cond_9

    invoke-direct {p0, v5}, Lorg/h2/index/IndexCursor;->canUseIndexForIn(Lorg/h2/table/Column;)Z

    move-result v6

    if-eqz v6, :cond_9

    iput-object v5, p0, Lorg/h2/index/IndexCursor;->inColumn:Lorg/h2/table/Column;

    invoke-virtual {v4, p1}, Lorg/h2/index/IndexCondition;->getCurrentValueList(Lorg/h2/engine/Session;)[Lorg/h2/value/Value;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/index/IndexCursor;->inList:[Lorg/h2/value/Value;

    iput v0, p0, Lorg/h2/index/IndexCursor;->inListIndex:I

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->getCompareType()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    iget-object v6, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/h2/index/IndexCursor;->end:Lorg/h2/result/SearchRow;

    if-nez v6, :cond_9

    invoke-direct {p0, v5}, Lorg/h2/index/IndexCursor;->canUseIndexForIn(Lorg/h2/table/Column;)Z

    move-result v6

    if-eqz v6, :cond_9

    iput-object v5, p0, Lorg/h2/index/IndexCursor;->inColumn:Lorg/h2/table/Column;

    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->getCurrentResult()Lorg/h2/result/ResultInterface;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/index/IndexCursor;->inResult:Lorg/h2/result/ResultInterface;

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Lorg/h2/index/IndexCondition;->getCurrentValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v7

    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->isStart()Z

    move-result v8

    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->isEnd()Z

    move-result v9

    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->isSpatialIntersects()Z

    move-result v4

    invoke-virtual {v5}, Lorg/h2/table/Column;->getColumnId()I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v10, p0, Lorg/h2/index/IndexCursor;->indexColumns:[Lorg/h2/table/IndexColumn;

    aget-object v10, v10, v5

    if-eqz v10, :cond_3

    iget v10, v10, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/2addr v10, v6

    if-eqz v10, :cond_3

    move v11, v9

    move v9, v8

    move v8, v11

    :cond_3
    if-eqz v8, :cond_4

    iget-object v10, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    invoke-direct {p0, v10, v5, v7, v6}, Lorg/h2/index/IndexCursor;->getSearchRow(Lorg/h2/result/SearchRow;ILorg/h2/value/Value;Z)Lorg/h2/result/SearchRow;

    move-result-object v10

    iput-object v10, p0, Lorg/h2/index/IndexCursor;->start:Lorg/h2/result/SearchRow;

    :cond_4
    if-eqz v9, :cond_5

    iget-object v10, p0, Lorg/h2/index/IndexCursor;->end:Lorg/h2/result/SearchRow;

    invoke-direct {p0, v10, v5, v7, v0}, Lorg/h2/index/IndexCursor;->getSearchRow(Lorg/h2/result/SearchRow;ILorg/h2/value/Value;Z)Lorg/h2/result/SearchRow;

    move-result-object v10

    iput-object v10, p0, Lorg/h2/index/IndexCursor;->end:Lorg/h2/result/SearchRow;

    :cond_5
    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/h2/index/IndexCursor;->intersects:Lorg/h2/result/SearchRow;

    invoke-direct {p0, v4, v5, v7}, Lorg/h2/index/IndexCursor;->getSpatialSearchRow(Lorg/h2/result/SearchRow;ILorg/h2/value/Value;)Lorg/h2/result/SearchRow;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/index/IndexCursor;->intersects:Lorg/h2/result/SearchRow;

    :cond_6
    if-nez v8, :cond_7

    if-eqz v9, :cond_8

    :cond_7
    iput-object v1, p0, Lorg/h2/index/IndexCursor;->inColumn:Lorg/h2/table/Column;

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->inList:[Lorg/h2/value/Value;

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->inResult:Lorg/h2/result/ResultInterface;

    :cond_8
    iget-object v4, p0, Lorg/h2/index/IndexCursor;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/DbSettings;->optimizeIsNull:Z

    if-nez v4, :cond_9

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v7, v4, :cond_9

    iput-boolean v6, p0, Lorg/h2/index/IndexCursor;->alwaysFalse:Z

    :cond_9
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_2
    return-void
.end method

.method public previous()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setIndex(Lorg/h2/index/Index;)V
    .locals 6

    iput-object p1, p0, Lorg/h2/index/IndexCursor;->index:Lorg/h2/index/Index;

    invoke-interface {p1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/IndexCursor;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/h2/table/IndexColumn;

    iput-object v1, p0, Lorg/h2/index/IndexCursor;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-interface {p1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v5, p0, Lorg/h2/index/IndexCursor;->indexColumns:[Lorg/h2/table/IndexColumn;

    aget-object v4, v1, v4

    aput-object v4, v5, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
