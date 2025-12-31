.class public Lorg/apache/mina/util/CircularQueue;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x4

.field private static final serialVersionUID:J = 0x376b7b7c7e9dd720L


# instance fields
.field private first:I

.field private full:Z

.field private final initialCapacity:I

.field private volatile items:[Ljava/lang/Object;

.field private last:I

.field private mask:I

.field private shrinkThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/CircularQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-static {p1}, Lorg/apache/mina/util/CircularQueue;->normalizeCapacity(I)I

    move-result p1

    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    iput p1, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    return-void
.end method

.method private checkIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decreaseSize()V
    .locals 2

    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    return-void
.end method

.method private expandIfNeeded()V
    .locals 7

    iget-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    shl-int/lit8 v1, v0, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v6, v4

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v6, v0, v4

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v4, v0, v4

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iput-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    ushr-int/lit8 v0, v1, 0x3

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    :cond_1
    return-void
.end method

.method private getRealIndex(I)I
    .locals 1

    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private increaseSize()V
    .locals 3

    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    and-int/2addr v0, v2

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    return-void
.end method

.method private static normalizeCapacity(I)I
    .locals 1

    const/4 v0, 0x1

    :cond_0
    if-ge v0, p0, :cond_1

    shl-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :cond_1
    return v0
.end method

.method private shrinkIfNeeded()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    if-gt v0, v1, :cond_6

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0}, Lorg/apache/mina/util/CircularQueue;->normalizeCapacity(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    shl-int/lit8 v2, v2, 0x1

    :cond_0
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    if-ge v2, v3, :cond_3

    if-ne v1, v3, :cond_2

    return-void

    :cond_2
    move v2, v3

    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-lez v0, :cond_5

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v5, v6, :cond_4

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v6, v5

    invoke-static {v1, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v7, v1, v6

    invoke-static {v5, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int/2addr v1, v6

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-static {v5, v4, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_0
    iput v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iput-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    iput v4, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    :cond_6
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/mina/util/CircularQueue;->offer(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->expandIfNeeded()V

    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result p1

    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aput-object p2, v0, p1

    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->increaseSize()V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/CircularQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iput-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->shrinkIfNeeded()V

    :cond_0
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->expandIfNeeded()V

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    aput-object p1, v0, v1

    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->increaseSize()V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    aput-object v1, v2, v3

    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->decreaseSize()V

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->shrinkIfNeeded()V

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 2
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result p1

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v5, v4, 0x1

    sub-int/2addr p1, v4

    invoke-static {v1, v2, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v5, v4, 0x1

    sub-int/2addr p1, v4

    invoke-static {v1, v2, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    aput-object v1, p1, v3

    iget-object p1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/2addr v3, v4

    iget-object v5, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v5, v5

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    invoke-static {p1, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object p1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->decreaseSize()V

    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->shrinkIfNeeded()V

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result p1

    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->capacity()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    if-lt v0, v1, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->capacity()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
