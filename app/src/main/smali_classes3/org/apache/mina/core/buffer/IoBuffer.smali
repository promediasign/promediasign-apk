.class public abstract Lorg/apache/mina/core/buffer/IoBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/mina/core/buffer/IoBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static allocator:Lorg/apache/mina/core/buffer/IoBufferAllocator;

.field private static useDirectBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator;

    invoke-direct {v0}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator;-><init>()V

    sput-object v0, Lorg/apache/mina/core/buffer/IoBuffer;->allocator:Lorg/apache/mina/core/buffer/IoBufferAllocator;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/mina/core/buffer/IoBuffer;->useDirectBuffer:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    sget-boolean v0, Lorg/apache/mina/core/buffer/IoBuffer;->useDirectBuffer:Z

    invoke-static {p0, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/mina/core/buffer/IoBuffer;->allocator:Lorg/apache/mina/core/buffer/IoBufferAllocator;

    invoke-interface {v0, p0, p1}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity: "

    .line 2
    invoke-static {p0, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;
    .locals 1

    sget-object v0, Lorg/apache/mina/core/buffer/IoBuffer;->allocator:Lorg/apache/mina/core/buffer/IoBufferAllocator;

    return-object v0
.end method

.method public static isUseDirectBuffer()Z
    .locals 1

    sget-boolean v0, Lorg/apache/mina/core/buffer/IoBuffer;->useDirectBuffer:Z

    return v0
.end method

.method public static normalizeCapacity(I)I
    .locals 2

    const v0, 0x7fffffff

    if-gez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    if-ge v1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    shl-int p0, v1, p0

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, p0

    :goto_1
    return v0
.end method

.method public static setAllocator(Lorg/apache/mina/core/buffer/IoBufferAllocator;)V
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lorg/apache/mina/core/buffer/IoBuffer;->allocator:Lorg/apache/mina/core/buffer/IoBufferAllocator;

    sput-object p0, Lorg/apache/mina/core/buffer/IoBuffer;->allocator:Lorg/apache/mina/core/buffer/IoBufferAllocator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->dispose()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "allocator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setUseDirectBuffer(Z)V
    .locals 0

    sput-boolean p0, Lorg/apache/mina/core/buffer/IoBuffer;->useDirectBuffer:Z

    return-void
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/mina/core/buffer/IoBuffer;->allocator:Lorg/apache/mina/core/buffer/IoBufferAllocator;

    invoke-interface {v0, p0}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0

    .line 2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract array()[B
.end method

.method public abstract arrayOffset()I
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asInputStream()Ljava/io/InputStream;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract asReadOnlyBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract buf()Ljava/nio/ByteBuffer;
.end method

.method public abstract capacity()I
.end method

.method public abstract capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract clear()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract compact()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract duplicate()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract expand(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract expand(II)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract flip()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract free()V
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public abstract get([B)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract get([BII)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getEnum(ILjava/lang/Class;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract getEnum(Ljava/lang/Class;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract getEnumInt(ILjava/lang/Class;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract getEnumInt(Ljava/lang/Class;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract getEnumSet(ILjava/lang/Class;)Ljava/util/EnumSet;
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
.end method

.method public abstract getEnumSet(Ljava/lang/Class;)Ljava/util/EnumSet;
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
.end method

.method public abstract getEnumSetInt(ILjava/lang/Class;)Ljava/util/EnumSet;
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
.end method

.method public abstract getEnumSetInt(Ljava/lang/Class;)Ljava/util/EnumSet;
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
.end method

.method public abstract getEnumSetLong(ILjava/lang/Class;)Ljava/util/EnumSet;
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
.end method

.method public abstract getEnumSetLong(Ljava/lang/Class;)Ljava/util/EnumSet;
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
.end method

.method public abstract getEnumSetShort(ILjava/lang/Class;)Ljava/util/EnumSet;
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
.end method

.method public abstract getEnumSetShort(Ljava/lang/Class;)Ljava/util/EnumSet;
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
.end method

.method public abstract getEnumShort(ILjava/lang/Class;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract getEnumShort(Ljava/lang/Class;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getHexDump()Ljava/lang/String;
.end method

.method public abstract getHexDump(I)Ljava/lang/String;
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getMediumInt()I
.end method

.method public abstract getMediumInt(I)I
.end method

.method public abstract getObject()Ljava/lang/Object;
.end method

.method public abstract getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;
.end method

.method public abstract getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
.end method

.method public abstract getPrefixedString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getSlice(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract getSlice(II)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
.end method

.method public abstract getUnsigned()S
.end method

.method public abstract getUnsigned(I)S
.end method

.method public abstract getUnsignedInt()J
.end method

.method public abstract getUnsignedInt(I)J
.end method

.method public abstract getUnsignedMediumInt()I
.end method

.method public abstract getUnsignedMediumInt(I)I
.end method

.method public abstract getUnsignedShort()I
.end method

.method public abstract getUnsignedShort(I)I
.end method

.method public abstract hasArray()Z
.end method

.method public abstract hasRemaining()Z
.end method

.method public abstract indexOf(B)I
.end method

.method public abstract isAutoExpand()Z
.end method

.method public abstract isAutoShrink()Z
.end method

.method public abstract isDerived()Z
.end method

.method public abstract isDirect()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract limit()I
.end method

.method public abstract limit(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract mark()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract markValue()I
.end method

.method public abstract minimumCapacity()I
.end method

.method public abstract minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract position()I
.end method

.method public abstract position(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract prefixedDataAvailable(I)Z
.end method

.method public abstract prefixedDataAvailable(II)Z
.end method

.method public abstract put(B)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract put(IB)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract put([B)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract put([BII)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putChar(C)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putChar(IC)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putDouble(D)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putDouble(ID)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putEnum(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation
.end method

.method public abstract putEnum(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation
.end method

.method public abstract putEnumInt(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation
.end method

.method public abstract putEnumInt(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation
.end method

.method public abstract putEnumSet(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
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
.end method

.method public abstract putEnumSet(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
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
.end method

.method public abstract putEnumSetInt(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
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
.end method

.method public abstract putEnumSetInt(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
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
.end method

.method public abstract putEnumSetLong(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
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
.end method

.method public abstract putEnumSetLong(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
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
.end method

.method public abstract putEnumSetShort(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
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
.end method

.method public abstract putEnumSetShort(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
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
.end method

.method public abstract putEnumShort(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation
.end method

.method public abstract putEnumShort(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation
.end method

.method public abstract putFloat(F)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putFloat(IF)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putMediumInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putMediumInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putPrefixedString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putPrefixedString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsigned(B)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsigned(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsigned(IB)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsigned(II)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsigned(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsigned(IS)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsigned(J)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsigned(S)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedInt(B)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedInt(IB)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedInt(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedInt(IS)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedInt(J)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedInt(S)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedShort(B)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedShort(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedShort(IB)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedShort(II)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedShort(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedShort(J)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract putUnsignedShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract remaining()I
.end method

.method public abstract reset()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract rewind()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract setAutoShrink(Z)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract shrink()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract skip(I)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract slice()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract sweep()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract sweep(B)Lorg/apache/mina/core/buffer/IoBuffer;
.end method
