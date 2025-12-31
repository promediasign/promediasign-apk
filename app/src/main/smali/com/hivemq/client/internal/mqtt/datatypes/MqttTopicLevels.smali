.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
.source "SourceFile"


# instance fields
.field private final firstEnd:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;-><init>([B)V

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->firstEnd:I

    return-void
.end method

.method public static concat(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;
    .locals 5

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->getArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->getArray()[B

    move-result-object p1

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    const/16 v4, 0x2f

    aput-byte v4, v1, v2

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->length()I

    move-result p0

    invoke-direct {p1, v1, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;-><init>([BI)V

    return-object p1
.end method


# virtual methods
.method public after(I)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 4

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    const/16 v1, 0x2f

    invoke-static {v0, p1, v1}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->indexOf([BIB)I

    move-result v0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    invoke-static {v1, p1, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->of([BII)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    array-length v3, v1

    invoke-static {v1, p1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    sub-int/2addr v0, p1

    invoke-direct {v2, v1, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;-><init>([BI)V

    return-object v2
.end method

.method public before(I)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    array-length v1, v0

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->firstEnd:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    invoke-static {v0, v2, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->of([BII)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    invoke-static {v0, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->firstEnd:I

    invoke-direct {v1, p1, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;-><init>([BI)V

    return-object v1
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->firstEnd:I

    return v0
.end method
