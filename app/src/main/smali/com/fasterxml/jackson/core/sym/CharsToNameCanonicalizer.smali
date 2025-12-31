.class public final Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;,
        Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    }
.end annotation


# instance fields
.field private _buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

.field private _canonicalize:Z

.field private final _flags:I

.field private _hashShared:Z

.field private _indexMask:I

.field private _longestCollisionList:I

.field private _overflows:Ljava/util/BitSet;

.field private final _parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field private final _seed:I

.field private _size:I

.field private _sizeThreshold:I

.field private _symbols:[Ljava/lang/String;

.field private final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_seed:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_flags:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashShared:Z

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v0, 0x40

    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;IILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iput p3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_seed:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    iput p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_flags:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    iget-object p1, p4, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;->symbols:[Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object p2, p4, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;->buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget p2, p4, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;->size:I

    iput p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget p2, p4, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;->longestCollisionList:I

    iput p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    array-length p1, p1

    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result p2

    iput p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashShared:Z

    return-void
.end method

.method private _addSymbol([CIIII)Ljava/lang/String;
    .locals 1

    iget-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashShared:Z

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->copyArrays()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashShared:Z

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    if-lt p4, v0, :cond_1

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->rehash()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash([CII)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result p5

    :cond_1
    :goto_0
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    sget-object p1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    iget p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_flags:I

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {p1, p4}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_2
    iget p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object p2, p1, p5

    if-nez p2, :cond_3

    aput-object p4, p1, p5

    goto :goto_1

    :cond_3
    shr-int/lit8 p1, p5, 0x1

    new-instance p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object p3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object p3, p3, p1

    invoke-direct {p2, p4, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    iget p3, p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    const/16 p5, 0x64

    if-le p3, p5, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_handleSpillOverflow(ILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    goto :goto_1

    :cond_4
    iget-object p5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object p2, p5, p1

    iget p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    :goto_1
    return-object p4
.end method

.method private _findSymbol2([CIILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Ljava/lang/String;
    .locals 1

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->has([CII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p4, p4, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private _handleSpillOverflow(ILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_flags:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->reportTooManyCollisions(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    add-int v1, p1, p1

    iget-object v2, p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget p2, p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    return-void
.end method

.method private static _thresholdSize(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method public static synthetic access$000(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)I
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    return p0
.end method

.method public static synthetic access$100(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)I
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    return p0
.end method

.method public static synthetic access$200(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    return-object p0
.end method

.method private copyArrays()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    return-void
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    or-int/lit8 v0, v2, 0x1

    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method public static createRoot(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>(I)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;->size:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;

    .line 10
    .line 11
    iget v2, v1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;->size:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/16 v2, 0x2ee0

    .line 17
    .line 18
    if-le v0, v2, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x40

    .line 21
    .line 22
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    :cond_2
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eq v2, v1, :cond_2

    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private rehash()V
    .locals 12

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v2, v1

    add-int v3, v2, v2

    const/high16 v4, 0x10000

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    iput v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iput-boolean v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    const/16 v0, 0x3f

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    iput-boolean v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashShared:Z

    return-void

    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    new-array v6, v3, [Ljava/lang/String;

    iput-object v6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    shr-int/lit8 v6, v3, 0x1

    new-array v6, v6, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    add-int/lit8 v6, v3, -0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    invoke-static {v3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v3

    iput v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v8, v1, v3

    if-eqz v8, :cond_2

    add-int/2addr v6, v0

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v9

    iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v11, v10, v9

    if-nez v11, :cond_1

    aput-object v8, v10, v9

    goto :goto_1

    :cond_1
    shr-int/2addr v9, v0

    new-instance v10, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v11, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v11, v11, v9

    invoke-direct {v10, v8, v11}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    iget-object v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v10, v8, v9

    iget v8, v10, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_2
    :goto_1
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    shr-int/lit8 v1, v2, 0x1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, v4, v2

    :goto_3
    if-eqz v3, :cond_5

    add-int/2addr v6, v0

    iget-object v8, v3, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v9

    iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v11, v10, v9

    if-nez v11, :cond_4

    aput-object v8, v10, v9

    goto :goto_4

    :cond_4
    shr-int/2addr v9, v0

    new-instance v10, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v11, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v11, v11, v9

    invoke-direct {v10, v8, v11}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    iget-object v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v10, v8, v9

    iget v8, v10, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_4
    iget-object v3, v3, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    goto :goto_3

    :cond_5
    add-int/2addr v2, v0

    goto :goto_2

    :cond_6
    iput v7, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    if-ne v6, v1, :cond_7

    return-void

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v3, v4, v0

    const-string v0, "Internal error on SymbolTable.rehash(): had %d entries; now have %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public _hashToIndex(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x7

    xor-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int/2addr p1, v0

    return p1
.end method

.method public calcHash(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_seed:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x21

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public calcHash([CII)I
    .locals 2

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_seed:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    mul-int/lit8 v0, v0, 0x21

    aget-char v1, p1, p2

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public findSymbol([CIII)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    if-nez v0, :cond_1

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p4

    :cond_1
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v0, v0, v5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p3, :cond_3

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    aget-char v3, p1, v3

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p3, :cond_2

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    shr-int/lit8 v1, v5, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->has([CII)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_findSymbol2([CIILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_addSymbol([CIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashSeed()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_seed:I

    return v0
.end method

.method public makeChild(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_seed:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;IILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;)V

    return-object v0
.end method

.method public maybeDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashShared:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashShared:Z

    :cond_1
    return-void
.end method

.method public reportTooManyCollisions(I)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Longest collision chain in symbol table (of size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") now exceeds maximum, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -- suspect a DoS attack based on hash collisions"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
