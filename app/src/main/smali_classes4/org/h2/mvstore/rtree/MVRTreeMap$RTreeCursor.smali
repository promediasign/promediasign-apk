.class public Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/rtree/MVRTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RTreeCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/h2/mvstore/rtree/SpatialKey;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lorg/h2/mvstore/rtree/SpatialKey;

.field private final filter:Lorg/h2/mvstore/rtree/SpatialKey;

.field private initialized:Z

.field private pos:Lorg/h2/mvstore/CursorPos;

.field private final root:Lorg/h2/mvstore/Page;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/rtree/SpatialKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->root:Lorg/h2/mvstore/Page;

    iput-object p2, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->filter:Lorg/h2/mvstore/rtree/SpatialKey;

    return-void
.end method


# virtual methods
.method public check(ZLorg/h2/mvstore/rtree/SpatialKey;Lorg/h2/mvstore/rtree/SpatialKey;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public fetchNext()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget v1, v1, Lorg/h2/mvstore/CursorPos;->index:I

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget v2, v1, Lorg/h2/mvstore/CursorPos;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lorg/h2/mvstore/CursorPos;->index:I

    invoke-virtual {v0, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    iget-object v2, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->filter:Lorg/h2/mvstore/rtree/SpatialKey;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1, v2}, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->check(ZLorg/h2/mvstore/rtree/SpatialKey;Lorg/h2/mvstore/rtree/SpatialKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iput-object v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    return-void

    :cond_2
    iget-object v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget v1, v1, Lorg/h2/mvstore/CursorPos;->index:I

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget v2, v1, Lorg/h2/mvstore/CursorPos;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lorg/h2/mvstore/CursorPos;->index:I

    invoke-virtual {v0, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    iget-object v3, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->filter:Lorg/h2/mvstore/rtree/SpatialKey;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4, v1, v3}, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->check(ZLorg/h2/mvstore/rtree/SpatialKey;Lorg/h2/mvstore/rtree/SpatialKey;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget-object v0, v0, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {v0, v2}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v0

    new-instance v1, Lorg/h2/mvstore/CursorPos;

    iget-object v2, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    invoke-direct {v1, v0, v4, v2}, Lorg/h2/mvstore/CursorPos;-><init>(Lorg/h2/mvstore/Page;ILorg/h2/mvstore/CursorPos;)V

    iput-object v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget-object v0, v0, Lorg/h2/mvstore/CursorPos;->parent:Lorg/h2/mvstore/CursorPos;

    iput-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    return-void
.end method

.method public hasNext()Z
    .locals 5

    iget-boolean v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->initialized:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/mvstore/CursorPos;

    iget-object v3, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->root:Lorg/h2/mvstore/Page;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lorg/h2/mvstore/CursorPos;-><init>(Lorg/h2/mvstore/Page;ILorg/h2/mvstore/CursorPos;)V

    iput-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->pos:Lorg/h2/mvstore/CursorPos;

    invoke-virtual {p0}, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->fetchNext()V

    iput-boolean v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->initialized:Z

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->next()Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/h2/mvstore/rtree/SpatialKey;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p0}, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->fetchNext()V

    return-object v0
.end method

.method public remove()V
    .locals 1

    const-string v0, "Removing is not supported"

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public skip(J)V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;->fetchNext()V

    move-wide p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
