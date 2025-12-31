.class public Lorg/h2/mvstore/MVMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Lj$/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/MVMap$Builder;,
        Lorg/h2/mvstore/MVMap$MapBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Lj$/util/concurrent/ConcurrentMap;"
    }
.end annotation


# instance fields
.field private volatile closed:Z

.field private createVersion:J

.field private id:I

.field private isVolatile:Z

.field private final keyType:Lorg/h2/mvstore/type/DataType;

.field private oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/ConcurrentArrayList<",
            "Lorg/h2/mvstore/Page;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field protected volatile root:Lorg/h2/mvstore/Page;

.field protected store:Lorg/h2/mvstore/MVStore;

.field private final valueType:Lorg/h2/mvstore/type/DataType;

.field protected volatile writeVersion:J


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-direct {v0}, Lorg/h2/mvstore/ConcurrentArrayList;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->keyType:Lorg/h2/mvstore/type/DataType;

    iput-object p2, p0, Lorg/h2/mvstore/MVMap;->valueType:Lorg/h2/mvstore/type/DataType;

    const-wide/16 p1, -0x1

    invoke-static {p0, p1, p2}, Lorg/h2/mvstore/Page;->createEmpty(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    return-void
.end method

.method private copy(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/CursorPos;)Lorg/h2/mvstore/Page;
    .locals 7

    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    invoke-static {p0, v0, v1, p1}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;JLorg/h2/mvstore/Page;)Lorg/h2/mvstore/Page;

    move-result-object v0

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_5

    iget-object v1, p2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    iget v2, p2, Lorg/h2/mvstore/CursorPos;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    iget-object p1, p2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    iget-wide v1, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object p1

    iput-object p1, p2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    iget-object v1, p2, Lorg/h2/mvstore/CursorPos;->parent:Lorg/h2/mvstore/CursorPos;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V

    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    :cond_0
    iget-object p2, p2, Lorg/h2/mvstore/CursorPos;->parent:Lorg/h2/mvstore/CursorPos;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/h2/mvstore/CursorPos;

    invoke-direct {v2, v0, v1, p2}, Lorg/h2/mvstore/CursorPos;-><init>(Lorg/h2/mvstore/Page;ILorg/h2/mvstore/CursorPos;)V

    :goto_2
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result p2

    if-ge v1, p2, :cond_4

    iput v1, v2, Lorg/h2/mvstore/CursorPos;->index:I

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getChildPagePos(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_3

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lorg/h2/mvstore/MVMap;->copy(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/CursorPos;)Lorg/h2/mvstore/Page;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, v2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    :cond_5
    return-object v0
.end method

.method public static getMapKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "map."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMapRootKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "root."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMinMax(Lorg/h2/mvstore/Page;Ljava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/Page;",
            "TK;ZZ)TK;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    neg-int p2, p2

    if-eqz p3, :cond_0

    const/4 v3, 0x2

    :cond_0
    sub-int/2addr p2, v3

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    add-int/2addr p2, v2

    :cond_3
    :goto_1
    if-ltz p2, :cond_5

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p3

    if-lt p2, p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object v1

    :cond_6
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_7

    neg-int v0, v0

    sub-int/2addr v0, v3

    goto :goto_3

    :cond_7
    add-int/2addr v0, v3

    :goto_3
    if-ltz v0, :cond_b

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v4

    if-lt v0, v4, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/h2/mvstore/MVMap;->getMinMax(Lorg/h2/mvstore/Page;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    if-eqz p3, :cond_a

    const/4 v4, -0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x1

    :goto_4
    add-int/2addr v0, v4

    goto :goto_3

    :cond_b
    :goto_5
    return-object v1
.end method

.method private rewrite(Lorg/h2/mvstore/Page;Ljava/util/Set;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/Page;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2, p2}, Lorg/h2/mvstore/MVMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPagePos(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/h2/mvstore/MVMap;->rewrite(Lorg/h2/mvstore/Page;Ljava/util/Set;)I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_7

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    :goto_2
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, p2, p2}, Lorg/h2/mvstore/MVMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :cond_7
    return v2
.end method


# virtual methods
.method public areValuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->valueType:Lorg/h2/mvstore/type/DataType;

    invoke-interface {v2, p1, p2}, Lorg/h2/mvstore/type/DataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public asString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "name"

    invoke-static {v0, v1, p1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-wide v1, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "createVersion"

    invoke-static {v0, v1, p1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "type"

    invoke-static {v0, v1, p1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public beforeWrite()V
    .locals 3

    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->closed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->readOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/MVStore;->beforeWrite(Lorg/h2/mvstore/MVMap;)V

    return-void

    :cond_0
    const-string v0, "This map is read-only"

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v2, "This map is closed"

    invoke-static {v1, v2, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public binarySearch(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->binarySearch(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public binarySearchPage(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Lorg/h2/mvstore/Page;
    .locals 2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->binarySearchPage(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Lorg/h2/mvstore/Page;

    move-result-object p1

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/h2/mvstore/MVMap;->getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->removeAllRecursive()V

    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    invoke-static {p0, v0, v1}, Lorg/h2/mvstore/Page;->createEmpty(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/mvstore/MVMap;->closed:Z

    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->keyType:Lorg/h2/mvstore/type/DataType;

    invoke-interface {v0, p1, p2}, Lorg/h2/mvstore/type/DataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$compute(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfPresent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public copyFrom(Lorg/h2/mvstore/MVMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    iget-object p1, p1, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/MVMap;->copy(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/CursorPos;)Lorg/h2/mvstore/Page;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V

    return-void
.end method

.method public cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/h2/mvstore/Cursor<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/Cursor;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {v0, p0, v1, p1}, Lorg/h2/mvstore/Cursor;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;Ljava/lang/Object;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    new-instance v1, Lorg/h2/mvstore/MVMap$2;

    invoke-direct {v1, p0, p0, v0}, Lorg/h2/mvstore/MVMap$2;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getFirstLast(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/mvstore/MVMap;->getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {p0, v0, p1}, Lorg/h2/mvstore/MVMap;->binarySearch(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildPageCount(Lorg/h2/mvstore/Page;)I
    .locals 0

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getRawChildPageCount()I

    move-result p1

    return p1
.end method

.method public getCreateVersion()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    return-wide v0
.end method

.method public getFirstLast(Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    :goto_0
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    :goto_1
    invoke-virtual {v0, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_2
    invoke-virtual {v0, v2}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/MVMap;->id:I

    return v0
.end method

.method public getKey(J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_6

    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, p1, v3

    if-ltz v5, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    :goto_0
    invoke-virtual {v3}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v1

    cmp-long v6, p1, v4

    if-ltz v6, :cond_1

    return-object v0

    :cond_1
    sub-long/2addr p1, v1

    long-to-int p2, p1

    invoke-virtual {v3, p2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, v3}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Lorg/h2/mvstore/Page;->getCounts(I)J

    move-result-wide v6

    add-long/2addr v6, v1

    cmp-long v8, p1, v6

    if-gez v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-wide v1, v6

    goto :goto_1

    :cond_4
    :goto_2
    if-ne v5, v4, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {v3, v5}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v3

    goto :goto_0

    :cond_6
    :goto_3
    return-object v0
.end method

.method public getKeyIndex(Ljava/lang/Object;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_2

    if-gez v3, :cond_1

    neg-long v0, v1

    int-to-long v2, v3

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    int-to-long v3, v3

    add-long/2addr v1, v3

    return-wide v1

    :cond_2
    if-gez v3, :cond_3

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    invoke-virtual {v0, v4}, Lorg/h2/mvstore/Page;->getCounts(I)J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyType()Lorg/h2/mvstore/type/DataType;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->keyType:Lorg/h2/mvstore/type/DataType;

    return-object v0
.end method

.method public getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZZ)TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/h2/mvstore/MVMap;->getMinMax(Lorg/h2/mvstore/Page;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    iget v1, p0, Lorg/h2/mvstore/MVMap;->id:I

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->getMapName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$getOrDefault(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRoot()Lorg/h2/mvstore/Page;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    return-object v0
.end method

.method public getStore()Lorg/h2/mvstore/MVStore;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueType()Lorg/h2/mvstore/type/DataType;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->valueType:Lorg/h2/mvstore/type/DataType;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/MVMap;->id:I

    return v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/mvstore/MVMap;->getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVStore;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/h2/mvstore/MVMap;->id:I

    const-string v0, "createVersion"

    const-wide/16 v1, 0x0

    invoke-static {p2, v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getCurrentVersion()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->closed:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->readOnly:Z

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->isVolatile:Z

    return v0
.end method

.method public keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/Cursor;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {v0, p0, v1, p1}, Lorg/h2/mvstore/Cursor;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;Ljava/lang/Object;)V

    return-object v0
.end method

.method public keyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/MVMap$1;

    invoke-direct {v0, p0}, Lorg/h2/mvstore/MVMap$1;-><init>(Lorg/h2/mvstore/MVMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    new-instance v1, Lorg/h2/mvstore/MVMap$3;

    invoke-direct {v1, p0, p0, v0}, Lorg/h2/mvstore/MVMap$3;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;)V

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getFirstLast(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lorg/h2/mvstore/MVMap;->getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newRoot(Lorg/h2/mvstore/Page;)V
    .locals 5

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->removeUnusedOldVersions()V

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/Page;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/ConcurrentArrayList;->add(Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    :cond_2
    return-void
.end method

.method public openReadOnly()Lorg/h2/mvstore/MVMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/MVMap;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->keyType:Lorg/h2/mvstore/type/DataType;

    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->valueType:Lorg/h2/mvstore/type/DataType;

    invoke-direct {v0, v1, v2}, Lorg/h2/mvstore/MVMap;-><init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/h2/mvstore/MVMap;->readOnly:Z

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lorg/h2/mvstore/MVMap;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "createVersion"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0, v2, v1}, Lorg/h2/mvstore/MVMap;->init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    iput-object v1, v0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    return-object v0
.end method

.method public openVersion(J)Lorg/h2/mvstore/MVMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/h2/mvstore/MVMap;->readOnly:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    aput-object v4, v5, v1

    const-string v0, "Unknown version {0}; this map was created in version is {1}"

    invoke-static {v2, v0, v5}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    iget-wide v1, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    cmp-long v3, p1, v1

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    iget-wide v1, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_4

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/Page;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v1}, Lorg/h2/mvstore/ConcurrentArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Page;

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->openReadOnly()Lorg/h2/mvstore/MVMap;

    move-result-object p1

    iput-object v0, p1, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    return-object p1

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    iget v1, p0, Lorg/h2/mvstore/MVMap;->id:I

    invoke-virtual {v0, p1, p2, v1, p0}, Lorg/h2/mvstore/MVStore;->openMapVersion(JILorg/h2/mvstore/MVMap;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "This map is read-only; need to call the method on the writable map"

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    const-string v2, "The value may not be null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    iget-wide v5, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0, v5, v6}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Lorg/h2/mvstore/MVMap;->splitRootIfNeeded(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;

    move-result-object v0

    move-object v3, p0

    move-object v4, v0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lorg/h2/mvstore/MVMap;->put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 2
    invoke-virtual {p1, p4}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-gez v0, :cond_0

    neg-int p2, v0

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2, p4, p5}, Lorg/h2/mvstore/Page;->insertLeaf(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, v0, p5}, Lorg/h2/mvstore/Page;->setValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-gez v0, :cond_2

    neg-int v0, v0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result v3

    iget-object v4, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v4}, Lorg/h2/mvstore/MVStore;->getPageSplitSize()I

    move-result v4

    if-le v3, v4, :cond_3

    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v3

    if-le v3, v2, :cond_3

    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/Page;->split(I)Lorg/h2/mvstore/Page;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    invoke-virtual {p1, v0, v3, v1}, Lorg/h2/mvstore/Page;->insertNode(ILjava/lang/Object;Lorg/h2/mvstore/Page;)V

    invoke-virtual/range {p0 .. p5}, Lorg/h2/mvstore/MVMap;->put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v3, p0

    move-object v4, v1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/h2/mvstore/MVMap;->put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    return-object p2
.end method

.method public declared-synchronized putBranch(Lorg/h2/mvstore/Page;Ljava/lang/Object;Ljava/lang/Object;)Lorg/h2/mvstore/Page;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/Page;",
            "TK;TV;)",
            "Lorg/h2/mvstore/Page;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    const-string v2, "The value may not be null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v5, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    invoke-virtual {p1, v5, v6}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Lorg/h2/mvstore/MVMap;->splitRootIfNeeded(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/h2/mvstore/MVMap;->put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public readPage(J)Lorg/h2/mvstore/Page;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0, p0, p1, p2}, Lorg/h2/mvstore/MVStore;->readPage(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v2, v0, v1}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1, p1}, Lorg/h2/mvstore/MVMap;->remove(Lorg/h2/mvstore/Page;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->removePage()V

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/h2/mvstore/Page;->createEmpty(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Lorg/h2/mvstore/Page;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 2
    invoke-virtual {p1, p4}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->remove(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_1
    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/h2/mvstore/MVMap;->remove(Lorg/h2/mvstore/Page;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide p3

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->removePage()V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->remove(I)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    :goto_3
    return-object p2
.end method

.method public declared-synchronized remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 3
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/h2/mvstore/MVMap;->areValuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public removePage(JI)V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/h2/mvstore/MVStore;->removePage(Lorg/h2/mvstore/MVMap;JI)V

    return-void
.end method

.method public removeUnusedOldVersions()V
    .locals 7

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getOldestVersionToKeep()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v2}, Lorg/h2/mvstore/ConcurrentArrayList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Page;

    :goto_0
    iget-object v3, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v3}, Lorg/h2/mvstore/ConcurrentArrayList;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/Page;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v4, v3}, Lorg/h2/mvstore/ConcurrentArrayList;->removeFirst(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/h2/mvstore/MVMap;->areValuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final synthetic replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public rewrite(Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getCurrentVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    return v4

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/h2/mvstore/MVMap;->openVersion(J)Lorg/h2/mvstore/MVMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVMap;->rewrite(Lorg/h2/mvstore/Page;Ljava/util/Set;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return v4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    throw p1

    :catch_1
    return v4
.end method

.method public rollbackTo(J)V
    .locals 3

    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/Page;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/ConcurrentArrayList;->removeLast(Ljava/lang/Object;)Z

    iput-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    :cond_3
    :goto_0
    return-void
.end method

.method public setRootPos(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, -0x1

    invoke-static {p0, p1, p2}, Lorg/h2/mvstore/Page;->createEmpty(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->readPage(J)Lorg/h2/mvstore/Page;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    iget-object p1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {p1, p3, p4}, Lorg/h2/mvstore/Page;->setVersion(J)V

    return-void
.end method

.method public setVolatile(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/mvstore/MVMap;->isVolatile:Z

    return-void
.end method

.method public setWriteVersion(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    return-void
.end method

.method public size()I
    .locals 5

    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public sizeAsLong()J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public splitRootIfNeeded(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;
    .locals 19

    move-object/from16 v1, p1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result v0

    move-object/from16 v15, p0

    iget-object v2, v15, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore;->getPageSplitSize()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v0

    if-gt v0, v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v0

    div-int/2addr v0, v7

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v16

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/Page;->split(I)Lorg/h2/mvstore/Page;

    move-result-object v10

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v2, v13, v6

    new-instance v18, Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v4

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    new-instance v0, Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual {v10}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v11

    invoke-virtual {v10}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v1

    move-object v9, v0

    move-object v3, v13

    move-wide v13, v1

    invoke-direct/range {v9 .. v14}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    new-array v14, v7, [Lorg/h2/mvstore/Page$PageReference;

    aput-object v18, v14, v6

    aput-object v0, v14, v8

    const/4 v13, 0x0

    const/4 v0, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-object v12, v3

    move-wide/from16 v15, v16

    move/from16 v17, v0

    invoke-static/range {v9 .. v17}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;J[Ljava/lang/Object;[Ljava/lang/Object;[Lorg/h2/mvstore/Page$PageReference;JI)Lorg/h2/mvstore/Page;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->asString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
