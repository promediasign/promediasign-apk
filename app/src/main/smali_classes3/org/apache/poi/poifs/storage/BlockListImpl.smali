.class abstract Lorg/apache/poi/poifs/storage/BlockListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/storage/BlockList;


# instance fields
.field private _bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

.field private _blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    return-void
.end method


# virtual methods
.method public blockCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    array-length v0, v0

    return v0
.end method

.method public fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->fetchBlocks(IILorg/apache/poi/poifs/storage/BlockList;)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Improperly initialized list: no block allocation table provided"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public remainingBlocks()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .locals 4

    .line 1
    const-string v0, " ] already removed - does your POIFS have circular or duplicate block references?"

    .line 2
    .line 3
    const-string v1, "block[ "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    .line 6
    .line 7
    aget-object v3, v2, p1

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aput-object v0, v2, p1

    .line 13
    .line 14
    return-object v3

    .line 15
    :cond_0
    new-instance v2, Ljava/io/IOException;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    new-instance v0, Ljava/io/IOException;

    .line 37
    .line 38
    const-string v1, "Cannot remove block[ "

    .line 39
    .line 40
    const-string v2, " ]; out of range[ 0 - "

    .line 41
    .line 42
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    .line 47
    .line 48
    array-length v1, v1

    .line 49
    add-int/lit8 v1, v1, -0x1

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " ]"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public setBAT(Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to replace existing BlockAllocationTable"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)V
    .locals 0

    invoke-virtual {p1}, [Lorg/apache/poi/poifs/storage/ListManagedBlock;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    iput-object p1, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    return-void
.end method

.method public zap(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method
