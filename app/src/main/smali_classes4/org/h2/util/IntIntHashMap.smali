.class public Lorg/h2/util/IntIntHashMap;
.super Lorg/h2/util/HashBase;
.source "SourceFile"


# static fields
.field private static final DELETED:I = 0x1

.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private keys:[I

.field private values:[I

.field private zeroValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/util/HashBase;-><init>()V

    return-void
.end method

.method private internalPut(II)V
    .locals 7

    invoke-virtual {p0, p1}, Lorg/h2/util/HashBase;->getIndex(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lorg/h2/util/IntIntHashMap;->keys:[I

    aget v5, v4, v0

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/h2/util/IntIntHashMap;->values:[I

    aget v6, v5, v0

    if-eq v6, v1, :cond_1

    if-ltz v2, :cond_0

    iget v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    move v0, v2

    :cond_0
    iget v2, p0, Lorg/h2/util/HashBase;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/h2/util/HashBase;->size:I

    aput p1, v4, v0

    aput p2, v5, v0

    return-void

    :cond_1
    if-gez v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_2
    if-ne v5, p1, :cond_3

    iget-object p1, p0, Lorg/h2/util/IntIntHashMap;->values:[I

    aput p2, p1, v0

    return-void

    :cond_3
    :goto_1
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v0, v3

    iget v3, p0, Lorg/h2/util/HashBase;->mask:I

    and-int/2addr v0, v3

    iget v3, p0, Lorg/h2/util/HashBase;->len:I

    if-le v4, v3, :cond_4

    const-string p1, "hashmap is full"

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    return-void

    :cond_4
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public get(I)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/h2/util/HashBase;->zeroKey:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/h2/util/IntIntHashMap;->zeroValue:I

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/h2/util/HashBase;->getIndex(I)I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lorg/h2/util/IntIntHashMap;->keys:[I

    aget v3, v3, v1

    if-nez v3, :cond_2

    iget-object v4, p0, Lorg/h2/util/IntIntHashMap;->values:[I

    aget v4, v4, v1

    if-nez v4, :cond_2

    return v0

    :cond_2
    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lorg/h2/util/IntIntHashMap;->values:[I

    aget p1, p1, v1

    return p1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/h2/util/HashBase;->mask:I

    and-int/2addr v1, v2

    iget v2, p0, Lorg/h2/util/HashBase;->len:I

    if-le v3, v2, :cond_4

    return v0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public put(II)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/util/HashBase;->zeroKey:Z

    iput p2, p0, Lorg/h2/util/IntIntHashMap;->zeroValue:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/h2/util/HashBase;->checkSizePut()V

    invoke-direct {p0, p1, p2}, Lorg/h2/util/IntIntHashMap;->internalPut(II)V

    return-void
.end method

.method public rehash(I)V
    .locals 4

    iget-object v0, p0, Lorg/h2/util/IntIntHashMap;->keys:[I

    iget-object v1, p0, Lorg/h2/util/IntIntHashMap;->values:[I

    invoke-virtual {p0, p1}, Lorg/h2/util/IntIntHashMap;->reset(I)V

    const/4 p1, 0x0

    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_1

    aget v2, v0, p1

    if-eqz v2, :cond_0

    aget v3, v1, p1

    invoke-direct {p0, v2, v3}, Lorg/h2/util/IntIntHashMap;->internalPut(II)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lorg/h2/util/HashBase;->zeroKey:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/h2/util/HashBase;->checkSizeRemove()V

    invoke-virtual {p0, p1}, Lorg/h2/util/HashBase;->getIndex(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lorg/h2/util/IntIntHashMap;->keys:[I

    aget v5, v4, v1

    if-ne v5, p1, :cond_1

    aput v0, v4, v1

    iget-object p1, p0, Lorg/h2/util/IntIntHashMap;->values:[I

    aput v2, p1, v1

    iget p1, p0, Lorg/h2/util/HashBase;->deletedCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/h2/util/HashBase;->deletedCount:I

    iget p1, p0, Lorg/h2/util/HashBase;->size:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/h2/util/HashBase;->size:I

    return-void

    :cond_1
    if-nez v5, :cond_2

    iget-object v4, p0, Lorg/h2/util/IntIntHashMap;->values:[I

    aget v4, v4, v1

    if-nez v4, :cond_2

    return-void

    :cond_2
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v3

    iget v3, p0, Lorg/h2/util/HashBase;->mask:I

    and-int/2addr v1, v3

    iget v3, p0, Lorg/h2/util/HashBase;->len:I

    if-le v4, v3, :cond_3

    return-void

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public reset(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/h2/util/HashBase;->reset(I)V

    iget p1, p0, Lorg/h2/util/HashBase;->len:I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/h2/util/IntIntHashMap;->keys:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/h2/util/IntIntHashMap;->values:[I

    return-void
.end method
