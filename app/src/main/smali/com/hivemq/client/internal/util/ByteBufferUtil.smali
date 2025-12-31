.class public abstract Lcom/hivemq/client/internal/util/ByteBufferUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/hivemq/client/internal/util/ByteBufferUtil;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public static allocate(IZ)Ljava/nio/ByteBuffer;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static copyBytes(Ljava/nio/ByteBuffer;)[B
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/hivemq/client/internal/util/ByteBufferUtil;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_0

    array-length v1, v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->copyBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method public static optionalReadOnly(Ljava/nio/ByteBuffer;)Lj$/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lj$/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method
