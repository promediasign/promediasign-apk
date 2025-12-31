.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
.source "SourceFile"


# instance fields
.field private final allEnd:I

.field private end:I

.field private start:I


# direct methods
.method private constructor <init>([BIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;-><init>([B)V

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    iput p3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iput p4, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getFilterByteStart()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->containsMultiLevelWildcard()Z

    move-result p0

    if-eqz p0, :cond_0

    array-length p0, v0

    add-int/lit8 p0, p0, -0x2

    goto :goto_0

    :cond_0
    array-length p0, v0

    :goto_0
    invoke-direct {v2, v0, v1, v1, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;-><init>([BIII)V

    return-object v2
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object p0

    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    array-length v1, p0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;-><init>([BIII)V

    return-object v0
.end method


# virtual methods
.method public fork()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .locals 5

    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    iget-object v1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iget v4, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;-><init>([BIII)V

    return-object v0
.end method

.method public forwardIfEqual(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->getArray()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getEnd()I

    move-result p1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    array-length v1, v3

    add-int/2addr v1, v0

    sub-int v6, v1, p1

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    if-gt v6, v1, :cond_1

    if-eq v6, v1, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    aget-byte v1, v1, v6

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    const/4 v7, 0x1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v4, p1, 0x1

    array-length v5, v3

    move-object v0, v1

    move v1, v2

    move v2, v6

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->equals([BII[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v6, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iput v6, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    return v7

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public forwardIfMatch(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getEnd()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->getArray()[B

    move-result-object p1

    :goto_0
    iget v4, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    array-length v5, p1

    const/16 v6, 0x2f

    if-ne v3, v5, :cond_4

    if-nez v4, :cond_3

    iget-object p1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    aget-byte p1, p1, v0

    if-ne p1, v6, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    return v2

    :cond_4
    if-eqz v4, :cond_5

    return v1

    :cond_5
    aget-byte v4, p1, v3

    iget-object v5, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    aget-byte v5, v5, v0

    if-ne v5, v4, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_8

    :goto_3
    iget v4, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    aget-byte v4, v4, v0

    if-eq v4, v6, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    return v1
.end method

.method public forwardWhileEqual(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)I
    .locals 8

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getEnd()I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getEnd()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->getArray()[B

    move-result-object p1

    :goto_0
    iget v4, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    array-length v7, p1

    if-ne v3, v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    const/16 v6, 0x2f

    if-nez v5, :cond_5

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    aget-byte v4, p1, v3

    iget-object v5, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    aget-byte v5, v5, v2

    if-ne v5, v4, :cond_8

    if-ne v4, v6, :cond_4

    move v0, v2

    move v1, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v5, :cond_6

    aget-byte p1, p1, v3

    if-ne p1, v6, :cond_8

    :cond_6
    if-nez v4, :cond_7

    iget-object p1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    aget-byte p1, p1, v2

    if-ne p1, v6, :cond_8

    :cond_7
    move v0, v2

    move v1, v3

    :cond_8
    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    return v1
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    return v0
.end method

.method public hasMultiLevelWildcard()Z
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    iget-object v1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 3

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    iget-object v1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    const/16 v2, 0x2f

    invoke-static {v1, v0, v2}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->indexOf([BIB)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 5

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->of([BII)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    new-instance v3, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    iget-object v4, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    invoke-static {v4, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    sub-int/2addr v1, v0

    invoke-direct {v3, v2, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;-><init>([BI)V

    return-object v3
.end method
