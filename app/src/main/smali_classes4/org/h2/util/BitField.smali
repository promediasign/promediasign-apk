.class public final Lorg/h2/util/BitField;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADDRESS_BITS:I = 0x6

.field private static final ADDRESS_MASK:I = 0x3f

.field private static final BITS:I = 0x40


# instance fields
.field private data:[J

.field private maxLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/h2/util/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    ushr-int/lit8 p1, p1, 0x3

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/h2/util/BitField;->data:[J

    return-void
.end method

.method private checkCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/util/BitField;->data:[J

    array-length v0, v0

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/util/BitField;->expandCapacity(I)V

    :cond_0
    return-void
.end method

.method private expandCapacity(I)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/h2/util/BitField;->data:[J

    array-length v1, v0

    if-lt p1, v1, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    :goto_1
    new-array v1, v1, [J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/h2/util/BitField;->data:[J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getBitMask(I)J
    .locals 2

    and-int/lit8 p0, p0, 0x3f

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method private set(IZ)V
    .locals 0

    .line 3
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/util/BitField;->set(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/util/BitField;->clear(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 6

    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/h2/util/BitField;->data:[J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-wide v2, v1, v0

    invoke-static {p1}, Lorg/h2/util/BitField;->getBitMask(I)J

    move-result-wide v4

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public get(I)Z
    .locals 6

    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/h2/util/BitField;->data:[J

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    :cond_0
    aget-wide v0, v1, v0

    invoke-static {p1}, Lorg/h2/util/BitField;->getBitMask(I)J

    move-result-wide v4

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getByte(I)I
    .locals 4

    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/h2/util/BitField;->data:[J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    aget-wide v0, v1, v0

    and-int/lit8 p1, p1, 0x38

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public length()I
    .locals 6

    iget v0, p0, Lorg/h2/util/BitField;->maxLength:I

    shr-int/lit8 v0, v0, 0x6

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/h2/util/BitField;->data:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v0, 0x6

    iget-object v2, p0, Lorg/h2/util/BitField;->data:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/util/BitField;->maxLength:I

    return v0
.end method

.method public nextClearBit(I)I
    .locals 7

    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/h2/util/BitField;->data:[J

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lorg/h2/util/BitField;->data:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    shl-int/lit8 v2, v0, 0x6

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x40

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/h2/util/BitField;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    shl-int/lit8 p1, v1, 0x6

    return p1
.end method

.method public set(I)V
    .locals 6

    .line 1
    shr-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0}, Lorg/h2/util/BitField;->checkCapacity(I)V

    iget-object v1, p0, Lorg/h2/util/BitField;->data:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lorg/h2/util/BitField;->getBitMask(I)J

    move-result-wide v4

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget v0, p0, Lorg/h2/util/BitField;->maxLength:I

    if-ge v0, p1, :cond_0

    iput p1, p0, Lorg/h2/util/BitField;->maxLength:I

    :cond_0
    return-void
.end method

.method public set(IIZ)V
    .locals 1

    .line 2
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    invoke-direct {p0, v0, p3}, Lorg/h2/util/BitField;->set(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget p1, p0, Lorg/h2/util/BitField;->maxLength:I

    if-le p2, p1, :cond_2

    iput p2, p0, Lorg/h2/util/BitField;->maxLength:I

    goto :goto_1

    :cond_1
    iget p3, p0, Lorg/h2/util/BitField;->maxLength:I

    if-lt p2, p3, :cond_2

    iput p1, p0, Lorg/h2/util/BitField;->maxLength:I

    :cond_2
    :goto_1
    return-void
.end method

.method public setByte(II)V
    .locals 7

    shr-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0}, Lorg/h2/util/BitField;->checkCapacity(I)V

    iget-object v1, p0, Lorg/h2/util/BitField;->data:[J

    aget-wide v2, v1, v0

    int-to-long v4, p2

    and-int/lit8 v6, p1, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget v0, p0, Lorg/h2/util/BitField;->maxLength:I

    if-ge v0, p1, :cond_0

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x7

    iput p1, p0, Lorg/h2/util/BitField;->maxLength:I

    :cond_0
    return-void
.end method
