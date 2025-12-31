.class public Lorg/h2/util/ValueHashMap;
.super Lorg/h2/util/HashBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/h2/util/HashBase;"
    }
.end annotation


# instance fields
.field private keys:[Lorg/h2/value/Value;

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/util/HashBase;-><init>()V

    return-void
.end method

.method private getIndex(Lorg/h2/value/Value;)I
    .locals 1

    invoke-virtual {p1}, Lorg/h2/value/Value;->hashCode()I

    move-result p1

    iget v0, p0, Lorg/h2/util/HashBase;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private internalPut(Lorg/h2/value/Value;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/value/Value;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/h2/util/ValueHashMap;->getIndex(Lorg/h2/value/Value;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lorg/h2/util/ValueHashMap;->keys:[Lorg/h2/value/Value;

    aget-object v5, v4, v0

    if-nez v5, :cond_1

    if-ltz v2, :cond_0

    iget v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    move v0, v2

    :cond_0
    iget v2, p0, Lorg/h2/util/HashBase;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/h2/util/HashBase;->size:I

    aput-object p1, v4, v0

    iget-object p1, p0, Lorg/h2/util/ValueHashMap;->values:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    :cond_1
    sget-object v4, Lorg/h2/value/ValueNull;->DELETED:Lorg/h2/value/ValueNull;

    if-ne v5, v4, :cond_2

    if-gez v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v5, p1}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p1, p0, Lorg/h2/util/ValueHashMap;->values:[Ljava/lang/Object;

    aput-object p2, p1, v0

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

.method public static newInstance()Lorg/h2/util/ValueHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/h2/util/ValueHashMap<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/util/ValueHashMap;

    invoke-direct {v0}, Lorg/h2/util/ValueHashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get(Lorg/h2/value/Value;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/value/Value;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/h2/util/ValueHashMap;->getIndex(Lorg/h2/value/Value;)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lorg/h2/util/ValueHashMap;->keys:[Lorg/h2/value/Value;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    sget-object v4, Lorg/h2/value/ValueNull;->DELETED:Lorg/h2/value/ValueNull;

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/h2/util/ValueHashMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/h2/util/HashBase;->mask:I

    and-int/2addr v0, v1

    iget v1, p0, Lorg/h2/util/HashBase;->len:I

    if-le v2, v1, :cond_3

    return-object v3

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public keys()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lorg/h2/util/HashBase;->size:I

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/util/ValueHashMap;->keys:[Lorg/h2/value/Value;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    sget-object v5, Lorg/h2/value/ValueNull;->DELETED:Lorg/h2/value/ValueNull;

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public put(Lorg/h2/value/Value;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/value/Value;",
            "TV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/h2/util/HashBase;->checkSizePut()V

    invoke-direct {p0, p1, p2}, Lorg/h2/util/ValueHashMap;->internalPut(Lorg/h2/value/Value;Ljava/lang/Object;)V

    return-void
.end method

.method public rehash(I)V
    .locals 5

    iget-object v0, p0, Lorg/h2/util/ValueHashMap;->keys:[Lorg/h2/value/Value;

    iget-object v1, p0, Lorg/h2/util/ValueHashMap;->values:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/h2/util/ValueHashMap;->reset(I)V

    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    sget-object v4, Lorg/h2/value/ValueNull;->DELETED:Lorg/h2/value/ValueNull;

    if-eq v3, v4, :cond_0

    aget-object v4, v1, v2

    invoke-direct {p0, v3, v4}, Lorg/h2/util/ValueHashMap;->internalPut(Lorg/h2/value/Value;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Lorg/h2/value/Value;)V
    .locals 5

    invoke-virtual {p0}, Lorg/h2/util/HashBase;->checkSizeRemove()V

    invoke-direct {p0, p1}, Lorg/h2/util/ValueHashMap;->getIndex(Lorg/h2/value/Value;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lorg/h2/util/ValueHashMap;->keys:[Lorg/h2/value/Value;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v4, Lorg/h2/value/ValueNull;->DELETED:Lorg/h2/value/ValueNull;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p1}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lorg/h2/util/ValueHashMap;->keys:[Lorg/h2/value/Value;

    aput-object v4, p1, v0

    iget-object p1, p0, Lorg/h2/util/ValueHashMap;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, p1, v0

    iget p1, p0, Lorg/h2/util/HashBase;->deletedCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/h2/util/HashBase;->deletedCount:I

    iget p1, p0, Lorg/h2/util/HashBase;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/h2/util/HashBase;->size:I

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    iget v2, p0, Lorg/h2/util/HashBase;->mask:I

    and-int/2addr v0, v2

    iget v2, p0, Lorg/h2/util/HashBase;->len:I

    if-le v3, v2, :cond_3

    return-void

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public reset(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/h2/util/HashBase;->reset(I)V

    iget p1, p0, Lorg/h2/util/HashBase;->len:I

    new-array v0, p1, [Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/util/ValueHashMap;->keys:[Lorg/h2/value/Value;

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/h2/util/ValueHashMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public values()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TV;>;"
        }
    .end annotation

    iget v0, p0, Lorg/h2/util/HashBase;->size:I

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/util/ValueHashMap;->keys:[Lorg/h2/value/Value;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lorg/h2/util/ValueHashMap;->keys:[Lorg/h2/value/Value;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    sget-object v4, Lorg/h2/value/ValueNull;->DELETED:Lorg/h2/value/ValueNull;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/h2/util/ValueHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
