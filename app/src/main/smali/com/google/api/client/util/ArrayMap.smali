.class public Lcom/google/api/client/util/ArrayMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ArrayMap$Entry;,
        Lcom/google/api/client/util/ArrayMap$EntryIterator;,
        Lcom/google/api/client/util/ArrayMap$EntrySet;
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
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private data:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/api/client/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/api/client/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/client/util/ArrayMap;

    invoke-direct {v0}, Lcom/google/api/client/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method private getDataIndexOfKey(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    if-nez p1, :cond_0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    return p1
.end method

.method private removeFromDataIndexOfKey(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    sub-int v4, v0, p1

    add-int/lit8 v4, v4, -0x2

    if-eqz v4, :cond_1

    add-int/lit8 v5, p1, 0x2

    invoke-static {v3, v5, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget p1, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/api/client/util/ArrayMap;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method private setData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    aput-object p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    aput-object p3, v0, p1

    return-void
.end method

.method private setDataCapacity(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    return-void

    :cond_0
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    array-length v2, v1

    if-eq p1, v2, :cond_2

    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    shl-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private valueAtDataIndex(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    return-void
.end method

.method public clone()Lcom/google/api/client/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/client/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/ArrayMap;

    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v2, v3

    if-nez p1, :cond_0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ensureCapacity(I)V
    .locals 3

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-le p1, v0, :cond_3

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v0, 0x2

    :cond_1
    if-ge v1, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->setDataCapacity(I)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/client/util/ArrayMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/ArrayMap$EntrySet;-><init>(Lcom/google/api/client/util/ArrayMap;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getIndexOfKey(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final getKey(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getValue(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->removeFromDataIndexOfKey(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->removeFromDataIndexOfKey(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .line 2
    if-ltz p1, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/api/client/util/ArrayMap;->ensureCapacity(I)V

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/util/ArrayMap;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-le v0, p1, :cond_0

    iput v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    :cond_0
    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    return v0
.end method
