.class public abstract Lorg/apache/mina/core/buffer/AbstractIoBuffer;
.super Lorg/apache/mina/core/buffer/IoBuffer;
.source "SourceFile"


# static fields
.field private static final BYTE_MASK:J = 0xffL

.field private static final INT_MASK:J = 0xffffffffL

.field private static final SHORT_MASK:J = 0xffffL


# instance fields
.field private autoExpand:Z

.field private autoShrink:Z

.field private final derived:Z

.field private mark:I

.field private minimumCapacity:I

.field private recapacityAllowed:Z


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/core/buffer/IoBuffer;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    invoke-static {}, Lorg/apache/mina/core/buffer/IoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAllocator(Lorg/apache/mina/core/buffer/IoBufferAllocator;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    iget p1, p1, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/buffer/IoBufferAllocator;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/core/buffer/IoBuffer;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAllocator(Lorg/apache/mina/core/buffer/IoBufferAllocator;)V

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    iput p2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return-void
.end method

.method private autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_0
    return-object p0
.end method

.method private autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_0
    return-object p0
.end method

.method private static checkFieldSize(I)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v1, "fieldSize cannot be negative: "

    .line 7
    .line 8
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has an ordinal value too large for a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 3
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_3

    add-int/2addr p1, p2

    if-eqz p3, :cond_0

    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->normalizeCapacity(I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result p3

    if-le p2, p3, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result p2

    if-le p1, p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2
    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private expand(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method private getMediumInt(BBB)I
    .locals 2

    .line 2
    shl-int/lit8 v0, p1, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shl-int/lit8 p2, p2, 0x8

    const v1, 0xff00

    and-int/2addr p2, v1

    or-int/2addr p2, v0

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p2, p3

    const/16 p3, 0x80

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_0

    const/high16 p1, -0x1000000

    or-int/2addr p2, p1

    :cond_0
    return p2
.end method

.method private toEnum(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I)TE;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    if-gt p2, v1, :cond_0

    aget-object p1, v0, p2

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "%d is too large of an ordinal to convert to the enum %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;J)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    array-length v1, p1

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    and-long v6, v2, p2

    cmp-long v8, v6, v2

    if-nez v8, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x1

    shl-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private toLong(Ljava/util/Set;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)J"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    const-wide/16 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The enum set is too large to fit in a bit vector: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    return-object v0
.end method

.method public final asReadOnlyBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract buf(Ljava/nio/ByteBuffer;)V
.end method

.method public final capacity()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public final capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6

    .line 2
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Lorg/apache/mina/core/buffer/IoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v5

    invoke-interface {v4, p1, v5}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clear()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public final compact()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoShrink()Z

    move-result v2

    if-eqz v2, :cond_4

    ushr-int/lit8 v2, v1, 0x2

    if-gt v0, v2, :cond_4

    iget v2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    if-le v1, v2, :cond_4

    shl-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v1

    :goto_0
    ushr-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-gt v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lorg/apache/mina/core/buffer/IoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v4

    invoke-interface {v3, v2, v4}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The amount of the remaining bytes is greater than the new capacity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v3

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final duplicate()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_0
    if-lt v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v5

    invoke-virtual {p1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v6

    if-eq v5, v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final expand(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final expand(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    ushr-int/lit8 v0, p2, 0x3

    and-int/lit8 v1, p2, 0x7

    if-lez v0, :cond_0

    shl-int/lit8 v2, p1, 0x8

    or-int/2addr v2, p1

    shl-int/lit8 v3, p1, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, p1, 0x18

    or-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long v4, v2, v4

    or-long/2addr v2, v4

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v1, 0x2

    and-int/lit8 v1, p2, 0x3

    if-lez v0, :cond_1

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p1

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_1
    shr-int/lit8 v0, v1, 0x1

    and-int/lit8 p2, p2, 0x1

    if-lez v0, :cond_2

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_3
    return-object p0
.end method

.method public fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    :goto_0
    if-lez v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v1, 0x2

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_1
    shr-int/lit8 v0, v1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_2
    if-lez p1, :cond_3

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_3
    return-object p0
.end method

.method public fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1
.end method

.method public fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1
.end method

.method public final flip()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public final get()B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public get([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final get([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final getChar()C
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public final getChar(I)C
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p1

    return p1
.end method

.method public final getDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEnum(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnum(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnumInt(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnumInt(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnumSet(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSet(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetInt(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetInt(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetLong(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetLong(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetShort(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort(I)S

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetShort(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumShort(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnumShort(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public final getFloat()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getHexDump()Ljava/lang/String;
    .locals 1

    .line 1
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getHexDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHexDump(I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->getHexdump(Lorg/apache/mina/core/buffer/IoBuffer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getInt()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getLong()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(I)J
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediumInt()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, v2, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v0

    return v0
.end method

.method public getMediumInt(I)I
    .locals 4

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result p1

    return p1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :try_start_0
    new-instance v1, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v1, Lorg/apache/mina/core/buffer/BufferDataException;

    invoke-direct {v1, p1}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1

    :cond_0
    new-instance p1, Lorg/apache/mina/core/buffer/BufferDataException;

    const-string v0, "Object length should be greater than 4: "

    .line 2
    invoke-static {v1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p1, v0}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1
.end method

.method public getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result p1

    :goto_0
    if-nez p1, :cond_3

    const-string p1, ""

    return-object p1

    :cond_3
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/apache/mina/core/buffer/BufferDataException;

    const-string p2, "fieldSize is not even for a UTF-16 string."

    invoke-direct {p1, p2}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-lt v1, v2, :cond_9

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v3

    mul-float v3, v3, p1

    float-to-int p1, v3

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    :goto_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p2, v4, v3, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    :goto_3
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    add-int/2addr v4, p1

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v3, v4

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    :cond_a
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1
.end method

.method public getPrefixedString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getShort()S
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public final getShort(I)S
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public final getSlice(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    add-int/2addr v0, p1

    if-lt v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "position + length ("

    const-string v3, ") is greater than limit ("

    const-string v4, ")."

    .line 1
    invoke-static {v2, v0, v3, v1, v4}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length: "

    .line 3
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSlice(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v0

    if-gt p1, v0, :cond_1

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    if-lt v1, p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index + length ("

    const-string v1, ") is greater than capacity ("

    .line 16
    invoke-static {p2, v0, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 17
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "index: "

    .line 18
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length: "

    .line 20
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->checkFieldSize(I)V

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldSize is not even."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    add-int/2addr p1, v2

    if-lt v3, p1, :cond_f

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ne v1, p1, :cond_6

    :goto_3
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_4
    if-ge v1, p1, :cond_9

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_9
    :goto_5
    if-ne v1, p1, :cond_6

    goto :goto_3

    :goto_6
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0

    :cond_a
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    :cond_b
    :goto_7
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p2, v5, v4, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    goto :goto_8

    :cond_c
    invoke-virtual {p2, v4}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    :goto_8
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v4, v5

    goto :goto_7

    :cond_e
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_7

    :cond_f
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1
.end method

.method public getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 9

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-16"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->indexOf(B)I

    move-result v0

    if-gez v0, :cond_2

    move v0, v3

    :cond_1
    :goto_0
    move v6, v0

    goto :goto_6

    :cond_2
    add-int/lit8 v4, v0, 0x1

    :goto_1
    move v6, v4

    goto :goto_6

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v7, v0, 0x1

    if-lt v7, v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v0, v0, 0x2

    if-lt v0, v3, :cond_4

    :goto_4
    const/4 v0, -0x1

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_e

    :goto_5
    if-gez v0, :cond_8

    sub-int v0, v3, v2

    and-int/lit8 v0, v0, -0x2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_8
    add-int/lit8 v4, v0, 0x2

    if-gt v4, v3, :cond_1

    goto :goto_1

    :goto_6
    if-ne v2, v0, :cond_9

    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v1

    :cond_9
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :cond_a
    :goto_7
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    goto :goto_8

    :cond_b
    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    :goto_8
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4, v1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v1, v4

    goto :goto_7

    :cond_d
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_7

    :cond_e
    move v0, v7

    goto/16 :goto_2
.end method

.method public final getUnsigned()S
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public final getUnsigned(I)S
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1
.end method

.method public getUnsignedInt()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedInt(I)J
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedMediumInt()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0

    :cond_0
    shl-int/lit8 v2, v2, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedMediumInt(I)I
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1

    :cond_0
    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1
.end method

.method public getUnsignedShort()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public final hasRemaining()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public indexOf(B)I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->array()[B

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_3

    aget-byte v4, v3, v1

    if-ne v4, p1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v2

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public final isAutoExpand()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAutoShrink()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoShrink:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDerived()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public final limit()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method

.method public final limit(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-le v0, p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    :cond_0
    return-object p0
.end method

.method public final mark()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public final markValue()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return v0
.end method

.method public final minimumCapacity()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return v0
.end method

.method public final minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minimumCapacity: "

    .line 2
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final position()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public final position(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-le v0, p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    :cond_0
    return-object p0
.end method

.method public prefixedDataAvailable(I)Z
    .locals 1

    .line 1
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(II)Z

    move-result p1

    return p1
.end method

.method public prefixedDataAvailable(II)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v2

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "prefixLength: "

    .line 2
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort(I)I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v2

    :goto_0
    if-ltz v2, :cond_5

    if-gt v2, p2, :cond_5

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result p2

    sub-int/2addr p2, p1

    if-lt p2, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    new-instance p1, Lorg/apache/mina/core/buffer/BufferDataException;

    const-string p2, "dataLength: "

    .line 4
    invoke-static {v2, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final put(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final put(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0

    .line 4
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final put([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 6
    invoke-direct {p0, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putChar(C)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putChar(IC)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putDouble(D)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putDouble(ID)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putEnum(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte"

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnum(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte"

    invoke-direct {p0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumInt(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putEnumInt(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putEnumSet(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide/16 v2, -0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p2, v0

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The enum set is too large to fit in a byte: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnumSet(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide/16 v2, -0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p1, v0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The enum set is too large to fit in a byte: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumSetInt(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The enum set is too large to fit in an int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnumSetInt(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The enum set is too large to fit in an int: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumSetLong(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putEnumSetLong(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putEnumSetShort(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide/32 v2, -0x10000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p2, v0

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The enum set is too large to fit in a short: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnumSetShort(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide/32 v2, -0x10000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p1, v0

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The enum set is too large to fit in a short: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumShort(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "short"

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnumShort(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "short"

    invoke-direct {p0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final putFloat(F)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putFloat(IF)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putMediumInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    .line 1
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte p1, p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_0
    return-object p0
.end method

.method public putMediumInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    .line 2
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    int-to-byte p2, p2

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_0
    return-object p0
.end method

.method public putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :try_start_0
    new-instance v2, Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    sub-int v0, p1, v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/buffer/BufferDataException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    const v7, 0x7fffffff

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "prefixLength: "

    .line 1
    invoke-static {v1, v3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const v7, 0xffff

    goto :goto_0

    :cond_2
    const/16 v7, 0xff

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, "The specified string is too long."

    if-gt v8, v7, :cond_14

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_1
    return-object v0

    :cond_6
    if-eqz v2, :cond_9

    if-eq v2, v6, :cond_9

    if-eq v2, v5, :cond_8

    if-ne v2, v4, :cond_7

    const/4 v8, 0x3

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "padding: "

    .line 3
    invoke-static {v2, v3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v11

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v12

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v3, v11, v14, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v14

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v14

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v15

    sub-int/2addr v15, v12

    if-gt v15, v7, :cond_13

    invoke-virtual {v14}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v12

    and-int/2addr v3, v8

    sub-int/2addr v2, v3

    move/from16 v15, p4

    invoke-virtual {v0, v15, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v12

    if-eq v1, v6, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_b

    goto :goto_5

    :cond_b
    sub-int/2addr v12, v4

    invoke-virtual {v0, v12, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    :cond_c
    sub-int/2addr v12, v5

    int-to-short v1, v2

    invoke-virtual {v0, v12, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    :cond_d
    sub-int/2addr v12, v6

    int-to-byte v1, v2

    invoke-virtual {v0, v12, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_5
    return-object v0

    :cond_e
    move/from16 v15, p4

    invoke-virtual {v14}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v16

    if-eqz v16, :cond_11

    if-eqz v13, :cond_10

    if-ne v13, v6, :cond_f

    invoke-virtual {v11}, Ljava/nio/Buffer;->remaining()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v16

    mul-float v14, v14, v16

    float-to-double v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    goto :goto_3

    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Expanded by "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v3

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but that wasn\'t enough for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-object/from16 v4, p1

    invoke-virtual {v11}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v14

    mul-float v14, v14, v5

    move v5, v7

    float-to-double v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-direct {v0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v13, v13, 0x1

    :goto_6
    move v7, v5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_11
    move-object/from16 v4, p1

    move v5, v7

    goto :goto_7

    :cond_12
    move-object/from16 v4, p1

    move v5, v7

    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v14}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_6

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6

    .line 9
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 10
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 11
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5

    .line 1
    invoke-static {p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->checkFieldSize(I)V

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldSize is not even."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    :cond_4
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    :goto_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v4, 0x1

    invoke-virtual {p3, p1, p2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p2

    :goto_3
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_2

    :cond_7
    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result p1

    if-ge p1, v2, :cond_9

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_9
    :goto_5
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    :cond_a
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_4

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v4

    :goto_2
    mul-float v4, v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expanded by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result p2

    mul-float p2, p2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but that wasn\'t enough for \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v4

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V

    goto/16 :goto_0
.end method

.method public putUnsigned(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 4
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 5
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0xff

    and-long/2addr p2, v1

    long-to-int p3, p2

    int-to-byte p2, p3

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 6
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0xff

    and-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 3
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p2, p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 4
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 5
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide v1, 0xffffffffL

    and-long/2addr p2, v1

    long-to-int p3, p2

    invoke-virtual {v0, p1, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 6
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 7
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 8
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 3
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p2, p2

    and-int/lit16 p2, p2, 0xff

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 4
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 5
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p3, p2

    int-to-short p2, p3

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 6
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 7
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p2, p1

    int-to-short p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 8
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final remaining()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final reset()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object p0
.end method

.method public final rewind()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public final setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAutoShrink(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoShrink:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived buffers and their parent can\'t be shrinked."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final shrink()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    iget v3, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v1

    :goto_0
    ushr-int/lit8 v5, v4, 0x1

    if-ge v5, v3, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v3, v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Lorg/apache/mina/core/buffer/IoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v6

    invoke-interface {v5, v3, v6}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final slice()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract slice0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public final sweep()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final sweep(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DirectBuffer"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "HeapBuffer"

    goto :goto_0

    :goto_1
    const-string v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getHexDump(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
