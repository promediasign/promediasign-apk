.class final Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/PersistentHashArrayMappedTrie$Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/PersistentHashArrayMappedTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompressedIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final bitmap:I

.field private final size:I

.field final values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    iput-object p2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    iput p3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->size:I

    return-void
.end method

.method public static combine(Lio/grpc/PersistentHashArrayMappedTrie$Node;ILio/grpc/PersistentHashArrayMappedTrie$Node;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;I",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;II)",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->indexBit(II)I

    move-result v2

    invoke-static {p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->indexBit(II)I

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 p4, p4, 0x5

    invoke-static {p0, p1, p2, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->combine(Lio/grpc/PersistentHashArrayMappedTrie$Node;ILio/grpc/PersistentHashArrayMappedTrie$Node;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object p0

    new-array p1, v1, [Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aput-object p0, p1, v0

    new-instance p2, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    invoke-interface {p0}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result p0

    invoke-direct {p2, v2, p1, p0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;-><init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V

    return-object p2

    :cond_0
    invoke-static {p1, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->uncompressedIndex(II)I

    move-result p1

    invoke-static {p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->uncompressedIndex(II)I

    move-result p3

    if-le p1, p3, :cond_1

    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aput-object p0, p1, v0

    aput-object p2, p1, v1

    new-instance p3, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    or-int p4, v2, v3

    invoke-interface {p0}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result p0

    invoke-interface {p2}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result p2

    add-int/2addr p0, p2

    invoke-direct {p3, p4, p1, p0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;-><init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V

    return-object p3
.end method

.method private compressedIndex(I)I
    .locals 1

    iget v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    return p1
.end method

.method private static indexBit(II)I
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->uncompressedIndex(II)I

    move-result p0

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0
.end method

.method private static uncompressedIndex(II)I
    .locals 0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method


# virtual methods
.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    invoke-static {p2, p3}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->indexBit(II)I

    move-result v0

    iget v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, v0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->compressedIndex(I)I

    move-result v0

    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aget-object v0, v1, v0

    add-int/lit8 p3, p3, 0x5

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->indexBit(II)I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->compressedIndex(I)I

    move-result v1

    iget v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    and-int v3, v2, v0

    if-nez v3, :cond_0

    or-int p3, v2, v0

    iget-object p4, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    array-length v0, p4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lio/grpc/PersistentHashArrayMappedTrie$Node;

    const/4 v2, 0x0

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p4, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    invoke-direct {p4, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, v0, v1

    iget-object p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    add-int/lit8 p2, v1, 0x1

    array-length p4, p1

    sub-int/2addr p4, v1

    invoke-static {p1, v1, v0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    invoke-virtual {p0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p3, v0, p2}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;-><init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/PersistentHashArrayMappedTrie$Node;

    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aget-object v2, v2, v1

    add-int/lit8 p4, p4, 0x5

    invoke-interface {v2, p1, p2, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->put(Ljava/lang/Object;Ljava/lang/Object;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->size()I

    move-result p1

    aget-object p2, v0, v1

    invoke-interface {p2}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aget-object p2, p2, v1

    invoke-interface {p2}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result p2

    sub-int/2addr p1, p2

    new-instance p2, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    iget p3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    invoke-direct {p2, p3, v0, p1}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;-><init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V

    return-object p2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompressedIndex("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
