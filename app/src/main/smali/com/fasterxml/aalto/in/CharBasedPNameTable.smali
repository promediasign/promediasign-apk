.class public Lcom/fasterxml/aalto/in/CharBasedPNameTable;
.super Lcom/fasterxml/aalto/util/NameTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;
    }
.end annotation


# instance fields
.field protected _buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

.field protected _dirty:Z

.field protected _indexMask:I

.field protected _size:I

.field protected _sizeThreshold:I

.field protected _symbols:[Lcom/fasterxml/aalto/in/PNameC;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/fasterxml/aalto/util/NameTable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_dirty:Z

    if-lt p1, v0, :cond_1

    const/16 v0, 0x10

    :goto_0
    if-ge v0, p1, :cond_0

    add-int/2addr v0, v0

    goto :goto_0

    :cond_0
    new-array p1, v0, [Lcom/fasterxml/aalto/in/PNameC;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    shr-int/lit8 p1, v0, 0x1

    new-array p1, p1, [Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    add-int/lit8 p1, v0, -0x1

    iput p1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 p1, v0, 0x2

    iput p1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_sizeThreshold:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not use negative/zero initial size: "

    .line 1
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/fasterxml/aalto/in/CharBasedPNameTable;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/fasterxml/aalto/util/NameTable;-><init>()V

    iget-object v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    iput-object v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    iget-object v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    iput-object v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    iget v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    iput v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    iget v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_sizeThreshold:I

    iput v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_sizeThreshold:I

    iget p1, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    iput p1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_dirty:Z

    return-void
.end method

.method private copyArrays()V
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    array-length v1, v0

    new-array v2, v1, [Lcom/fasterxml/aalto/in/PNameC;

    iput-object v2, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    array-length v1, v0

    new-array v2, v1, [Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    iput-object v2, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_dirty:Z

    return-void
.end method

.method private rehash()V
    .locals 11

    iget-object v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    array-length v1, v0

    add-int v2, v1, v1

    iget-object v3, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    new-array v4, v2, [Lcom/fasterxml/aalto/in/PNameC;

    iput-object v4, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    shr-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    iput-object v4, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    iget v2, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_sizeThreshold:I

    add-int/2addr v2, v2

    iput v2, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_sizeThreshold:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v6, v0, v4

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6}, Lcom/fasterxml/aalto/in/PNameC;->getCustomHash()I

    move-result v7

    iget v8, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    and-int/2addr v7, v8

    iget-object v8, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    aget-object v9, v8, v7

    if-nez v9, :cond_0

    aput-object v6, v8, v7

    goto :goto_1

    :cond_0
    shr-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    new-instance v9, Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    aget-object v10, v8, v7

    invoke-direct {v9, v6, v10}, Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;-><init>(Lcom/fasterxml/aalto/in/PNameC;Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;)V

    aput-object v9, v8, v7

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    shr-int/lit8 v0, v1, 0x1

    :goto_2
    if-ge v2, v0, :cond_5

    aget-object v1, v3, v2

    :goto_3
    if-eqz v1, :cond_4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;->getSymbol()Lcom/fasterxml/aalto/in/PNameC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/aalto/in/PNameC;->getCustomHash()I

    move-result v6

    iget v7, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    aget-object v8, v7, v6

    if-nez v8, :cond_3

    aput-object v4, v7, v6

    goto :goto_4

    :cond_3
    shr-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    new-instance v8, Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    aget-object v9, v7, v6

    invoke-direct {v8, v4, v9}, Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;-><init>(Lcom/fasterxml/aalto/in/PNameC;Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;)V

    aput-object v8, v7, v6

    :goto_4
    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;->getNext()Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    move-result-object v1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    if-ne v5, v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error on SymbolTable.rehash(): had "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " entries; now have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSymbol([CIII)Lcom/fasterxml/aalto/in/PNameC;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/fasterxml/aalto/in/PNameC;->construct(Ljava/lang/String;I)Lcom/fasterxml/aalto/in/PNameC;

    move-result-object p1

    iget p2, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    and-int/2addr p2, p4

    iget-object p3, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    aget-object p3, p3, p2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    iget p3, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    iget v1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_sizeThreshold:I

    const/4 v2, 0x0

    if-lt p3, v1, :cond_1

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->rehash()V

    iget p2, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    and-int/2addr p2, p4

    iget-object p3, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    aget-object p3, p3, p2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p3, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_dirty:Z

    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->copyArrays()V

    :cond_2
    iget p3, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    if-eqz v2, :cond_3

    iget-object p3, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    aput-object p1, p3, p2

    goto :goto_2

    :cond_3
    shr-int/2addr p2, v0

    iget-object p3, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    new-instance p4, Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    aget-object v0, p3, p2

    invoke-direct {p4, p1, v0}, Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;-><init>(Lcom/fasterxml/aalto/in/PNameC;Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;)V

    aput-object p4, p3, p2

    :goto_2
    return-object p1
.end method

.method public findSymbol([CIII)Lcom/fasterxml/aalto/in/PNameC;
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    and-int/2addr v0, p4

    iget-object v1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/fasterxml/aalto/in/PNameC;->equalsPName([CIII)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    shr-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;->find([CIII)Lcom/fasterxml/aalto/in/PNameC;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public maybeDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_dirty:Z

    return v0
.end method

.method public declared-synchronized mergeFromChild(Lcom/fasterxml/aalto/in/CharBasedPNameTable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    iput-object v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_symbols:[Lcom/fasterxml/aalto/in/PNameC;

    iget-object v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    iput-object v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_buckets:[Lcom/fasterxml/aalto/in/CharBasedPNameTable$Bucket;

    iget v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    iput v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    iget v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_sizeThreshold:I

    iput v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_sizeThreshold:I

    iget v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    iput v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_indexMask:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_dirty:Z

    iput-boolean v0, p1, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_dirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->_size:I

    return v0
.end method
