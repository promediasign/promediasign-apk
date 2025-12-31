.class public Lorg/h2/mvstore/db/MVSpatialIndex;
.super Lorg/h2/index/BaseIndex;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/SpatialIndex;
.implements Lorg/h2/mvstore/db/MVIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;
    }
.end annotation


# instance fields
.field private dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final mapName:Ljava/lang/String;

.field final mvTable:Lorg/h2/mvstore/db/MVTable;

.field private spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/rtree/MVRTreeMap<",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 6

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    array-length v0, p5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    aget-object v0, p5, v0

    iget v1, v0, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_4

    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getType()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    iput-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iget-object p3, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->isStarting()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p5}, Lorg/h2/index/BaseIndex;->checkIndexColumnTypes([Lorg/h2/table/IndexColumn;)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "index."

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mapName:Ljava/lang/String;

    new-instance p4, Lorg/h2/mvstore/db/ValueDataType;

    const/4 p5, 0x0

    invoke-direct {p4, p5, p5, p5}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    new-instance p6, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;

    invoke-direct {p6, p4}, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;-><init>(Lorg/h2/mvstore/type/DataType;)V

    new-instance p4, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;

    invoke-direct {p4}, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;-><init>()V

    invoke-virtual {p4, p6}, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;

    move-result-object p4

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/rtree/MVRTreeMap;

    iput-object p1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p2, p5}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Lorg/h2/mvstore/MVMap;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Spatial index on non-geometry column, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "Nulls last is not supported"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "Nulls first is not supported"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    const-string p1, "Cannot index in descending order"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    const-string p1, "Can only index one column"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;

    invoke-direct {v1, p0, p1, v0}, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVSpatialIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;)V

    return-object v1
.end method

.method private getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;
    .locals 9

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    new-array p1, v1, [F

    invoke-direct {v0, v2, v3, p1}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object v0

    :cond_0
    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueGeometry;

    invoke-virtual {v0}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Geometry;->getEnvelopeInternal()Lcom/vividsolutions/jts/geom/Envelope;

    move-result-object v0

    new-instance v2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMinX()D

    move-result-wide v5

    double-to-float p1, v5

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMaxX()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMaxY()D

    move-result-wide v7

    double-to-float v0, v7

    const/4 v7, 0x4

    new-array v7, v7, [F

    aput p1, v7, v1

    const/4 p1, 0x1

    aput v5, v7, p1

    const/4 p1, 0x2

    aput v6, v7, p1

    const/4 p1, 0x3

    aput v0, v7, p1

    invoke-direct {v2, v3, v4, v7}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object v2
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/h2/mvstore/db/MVSpatialIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v0}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->findContainedKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {v1, p2}, Lorg/h2/mvstore/rtree/SpatialKey;->equalsIgnoringId(Lorg/h2/mvstore/rtree/SpatialKey;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/index/BaseIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v0}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->findContainedKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {v1, p2}, Lorg/h2/mvstore/rtree/SpatialKey;->equalsIgnoringId(Lorg/h2/mvstore/rtree/SpatialKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->isSameTransaction(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lorg/h2/mvstore/rtree/SpatialKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/index/BaseIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    iget-object p1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p1

    const p2, 0x16013

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_6
    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addBufferedRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public addRowsToBuffer(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/h2/result/Row;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findByGeometry(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/db/MVSpatialIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {p0, p4}, Lorg/h2/mvstore/db/MVSpatialIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->findIntersectingKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object p2

    new-instance p3, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;

    invoke-direct {p3, p0, p1, p2}, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVSpatialIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;)V

    return-object p3
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Spatial Index can only be fetch in ascending order"

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
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

    iget-object p1, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    invoke-static {p2, p1}, Lorg/h2/index/SpatialTreeIndex;->getCostRangeIndex([I[Lorg/h2/table/Column;)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            ")",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getInstance(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    return-object p1
.end method

.method public getRow(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/result/SearchRow;
    .locals 3

    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v0

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/h2/result/SearchRow;->setKey(J)V

    return-object v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x15f97

    invoke-static {v2, v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getTable()Lorg/h2/mvstore/db/MVTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    return-object v0
.end method

.method public bridge synthetic getTable()Lorg/h2/table/Table;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSpatialIndex;->getTable()Lorg/h2/mvstore/db/MVTable;

    move-result-object v0

    return-object v0
.end method

.method public needRebuild()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const v2, 0x15f97

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v1, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 2

    .line 2
    invoke-direct {p0, p2}, Lorg/h2/mvstore/db/MVSpatialIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x16000

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->clear()V

    return-void
.end method
