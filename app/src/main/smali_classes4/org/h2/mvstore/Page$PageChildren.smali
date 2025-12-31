.class public Lorg/h2/mvstore/Page$PageChildren;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageChildren"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[J


# instance fields
.field children:[J

.field chunkList:Z

.field final pos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lorg/h2/mvstore/Page$PageChildren;->EMPTY_ARRAY:[J

    return-void
.end method

.method private constructor <init>(J[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    iput-object p3, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    return-void
.end method

.method public constructor <init>(Lorg/h2/mvstore/Page;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getRawChildPageCount()I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getChildPagePos(I)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static read(Lorg/h2/mvstore/FileStore;JIJJ)Lorg/h2/mvstore/Page$PageChildren;
    .locals 12

    move-object v0, p0

    move-wide/from16 v1, p4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageMaxLength(J)I

    move-result v7

    const/high16 v8, 0x200000

    if-ne v7, v8, :cond_0

    const/16 v7, 0x80

    invoke-virtual {p0, v1, v2, v7}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    :cond_0
    sub-long v8, p6, v1

    int-to-long v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    const/4 v7, 0x6

    if-ltz v8, :cond_6

    invoke-virtual {p0, v1, v2, v8}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v1

    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v9

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    if-gt v10, v8, :cond_5

    add-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v9

    move v11, p3

    if-ne v9, v11, :cond_4

    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result v9

    invoke-static {v2}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result v2

    xor-int/2addr v2, v9

    invoke-static {v10}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result v9

    xor-int/2addr v2, v9

    int-to-short v9, v2

    if-ne v8, v9, :cond_3

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_2

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [J

    :goto_0
    if-gt v5, v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    aput-wide v3, v2, v5

    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/h2/mvstore/Page$PageChildren;

    move-wide v3, p1

    invoke-direct {v0, p1, p2, v2}, Lorg/h2/mvstore/Page$PageChildren;-><init>(J[J)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v3

    const-string v0, "File corrupted in chunk {0}, expected check value {1}, got {2}"

    invoke-static {v7, v0, v4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v3

    const-string v0, "File corrupted in chunk {0}, expected map id {1}, got {2}"

    invoke-static {v7, v0, v4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v3

    const-string v0, "File corrupted in chunk {0}, expected page length =< {1}, got {2}"

    invoke-static {v7, v0, v4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v3

    const-string v0, "Illegal page length {0} reading at {1}; max pos {2} "

    invoke-static {v7, v0, v4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method private removeChild(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v1, v1

    if-ne v1, v0, :cond_0

    sget-object p1, Lorg/h2/mvstore/Page$PageChildren;->EMPTY_ARRAY:[J

    iput-object p1, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    return-void

    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v2, v1

    sub-int/2addr v2, v0

    new-array v0, v2, [J

    array-length v2, v1

    invoke-static {v1, v0, v2, p1}, Lorg/h2/mvstore/DataUtils;->copyExcept(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    return-void
.end method


# virtual methods
.method public collectReferencedChunks(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    invoke-static {v0, v1}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMemory()I
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public removeDuplicateChunkReferences()V
    .locals 5

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iget-wide v1, p0, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    invoke-static {v1, v2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v1}, Lorg/h2/mvstore/Page$PageChildren;->removeChild(I)V

    move v1, v2

    :goto_1
    add-int/2addr v1, v4

    goto :goto_0

    :cond_2
    return-void
.end method
