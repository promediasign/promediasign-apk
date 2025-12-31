.class public Lorg/h2/index/SpatialTreeIndex;
.super Lorg/h2/index/BaseIndex;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/SpatialIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/index/SpatialTreeIndex$SpatialCursor;
    }
.end annotation


# static fields
.field private static final MAP_PREFIX:Ljava/lang/String; = "RTREE_"


# instance fields
.field private closed:Z

.field private needRebuild:Z

.field private final store:Lorg/h2/mvstore/MVStore;

.field private final treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/rtree/MVRTreeMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZZLorg/h2/engine/Session;)V
    .locals 4

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    invoke-virtual {p5}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v0

    if-nez v0, :cond_b

    if-nez p6, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Non persistent index called with create==false"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    array-length v0, p4

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    const/4 v0, 0x0

    aget-object v2, p4, v0

    iget v2, v2, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_9

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_8

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p5}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-boolean p7, p0, Lorg/h2/index/SpatialTreeIndex;->needRebuild:Z

    iput-object p1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result p1

    if-nez p1, :cond_3

    aget-object p1, p4, v0

    iget-object p1, p1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getType()I

    move-result p1

    const/16 p3, 0x16

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "spatial index on non-geometry column, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p4, v0

    iget-object p2, p2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    if-nez p6, :cond_4

    const/4 p1, 0x0

    invoke-static {p1}, Lorg/h2/mvstore/MVStore;->open(Ljava/lang/String;)Lorg/h2/mvstore/MVStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    new-instance p2, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;

    invoke-direct {p2}, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;-><init>()V

    const-string p3, "spatialIndex"

    invoke-virtual {p1, p3, p2}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/rtree/MVRTreeMap;

    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    goto :goto_2

    :cond_4
    if-ltz p2, :cond_6

    invoke-virtual {p8}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/mvstore/db/MVTableEngine;->init(Lorg/h2/engine/Database;)Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {p8}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "RTREE_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;

    invoke-direct {p3}, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;-><init>()V

    invoke-virtual {p1, p2, p3}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/rtree/MVRTreeMap;

    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lorg/h2/index/SpatialTreeIndex;->needRebuild:Z

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string p1, "Persistent index with id<0"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_7
    const-string p1, "cannot do nulls last"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_8
    const-string p1, "cannot do nulls first"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p1, "cannot do descending"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_a
    const-string p1, "can only do one column"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_b
    const-string p1, "not unique"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;
    .locals 3

    .line 1
    new-instance v0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;

    iget-object v1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-direct {v0, v1, v2, p1}, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;-><init>(Ljava/util/Iterator;Lorg/h2/table/Table;Lorg/h2/engine/Session;)V

    return-object v0
.end method

.method public static getCostRangeIndex([I[Lorg/h2/table/Column;)J
    .locals 6

    array-length v0, p1

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    aget v4, p0, v4

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_1

    return-wide v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0x2

    return-wide p0
.end method

.method private getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    aget v2, v2, v0

    invoke-interface {p1, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_1
    const/16 v1, 0x16

    invoke-virtual {v2, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v1

    check-cast v1, Lorg/h2/value/ValueGeometry;

    invoke-virtual {v1}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vividsolutions/jts/geom/Geometry;->getEnvelopeInternal()Lcom/vividsolutions/jts/geom/Envelope;

    move-result-object v1

    new-instance v2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/vividsolutions/jts/geom/Envelope;->getMinX()D

    move-result-wide v5

    double-to-float p1, v5

    invoke-virtual {v1}, Lcom/vividsolutions/jts/geom/Envelope;->getMaxX()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v1}, Lcom/vividsolutions/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v1}, Lcom/vividsolutions/jts/geom/Envelope;->getMaxY()D

    move-result-wide v7

    double-to-float v1, v7

    const/4 v7, 0x4

    new-array v7, v7, [F

    aput p1, v7, v0

    const/4 p1, 0x1

    aput v5, v7, p1

    const/4 p1, 0x2

    aput v6, v7, p1

    const/4 p1, 0x3

    aput v1, v7, p1

    invoke-direct {v2, v3, v4, v7}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object v2
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    iget-boolean p1, p0, Lorg/h2/index/SpatialTreeIndex;->closed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {p0, p2}, Lorg/h2/index/SpatialTreeIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object v0

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->add(Lorg/h2/mvstore/rtree/SpatialKey;Ljava/lang/Object;)V

    return-void

    :cond_0
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

    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->close()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/index/SpatialTreeIndex;->closed:Z

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/index/SpatialTreeIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/index/SpatialTreeIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findByGeometry(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/index/SpatialTreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;

    iget-object p3, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {p0, p4}, Lorg/h2/index/SpatialTreeIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/h2/mvstore/rtree/MVRTreeMap;->findIntersectingKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;

    move-result-object p3

    iget-object p4, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-direct {p2, p3, p4, p1}, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;-><init>(Ljava/util/Iterator;Lorg/h2/table/Table;Lorg/h2/engine/Session;)V

    return-object p2
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/SpatialTreeIndex;->closed:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/index/SpatialTreeIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Spatial Index can only be fetch by ascending order"

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

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

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public needRebuild()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/SpatialTreeIndex;->needRebuild:Z

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    iget-object v0, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    .line 2
    iget-boolean p1, p0, Lorg/h2/index/SpatialTreeIndex;->closed:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {p0, p2}, Lorg/h2/index/SpatialTreeIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object v0

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "row not found"

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->clear()V

    return-void
.end method
