.class public abstract Lcom/hivemq/client/internal/util/ByteArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final array:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/util/ByteArray;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/util/ByteArray;

    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getEnd()I

    move-result v2

    iget-object v3, p1, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/ByteArray;->getStart()I

    move-result v4

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/ByteArray;->getEnd()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->equals([BII[BII)Z

    move-result p1

    return p1
.end method

.method public getEnd()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    array-length v0, v0

    return v0
.end method

.method public getStart()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getEnd()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->hashCode([BII)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
