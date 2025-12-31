.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
.super Lcom/hivemq/client/internal/util/ByteArray;
.source "SourceFile"


# static fields
.field private static final SINGLE_LEVEL_WILDCARD:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x2b

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;-><init>([B)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->SINGLE_LEVEL_WILDCARD:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/ByteArray;-><init>([B)V

    return-void
.end method

.method private static isSingleLevelWildcard([BII)Z
    .locals 1

    .line 2
    sub-int/2addr p2, p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    aget-byte p0, p0, p1

    const/16 p1, 0x2b

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static of([BII)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->SINGLE_LEVEL_WILDCARD:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    return-object p0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;-><init>([B)V

    return-object v0
.end method

.method public static toFilter([BLcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Z)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    new-array v1, v1, [B

    const/16 v2, 0x2f

    if-eqz p0, :cond_4

    array-length v3, p0

    invoke-static {p0, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    aput-byte v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    array-length v4, v3

    invoke-static {v3, v0, v1, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    array-length v0, v0

    add-int/2addr p0, v0

    :cond_5
    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    aput-byte v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    :cond_6
    const/16 p1, 0x23

    aput-byte p1, v1, p0

    :cond_7
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getArray()[B
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    return-object v0
.end method

.method public isSingleLevelWildcard()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getEnd()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard([BII)Z

    move-result v0

    return v0
.end method

.method public trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 0

    return-object p0
.end method
