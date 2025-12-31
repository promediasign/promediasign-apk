.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;


# instance fields
.field private final confirmable:Lcom/hivemq/client/internal/checkpoint/Confirmable;

.field private final contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final correlationData:Ljava/nio/ByteBuffer;

.field private final messageExpiryInterval:J

.field private final payload:Ljava/nio/ByteBuffer;

.field private final payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

.field private final qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private final responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

.field private final retain:Z

.field private final topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V
    .locals 0

    invoke-direct {p0, p11}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-boolean p4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    iput-wide p5, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iput-object p9, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iput-object p10, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    iput-object p12, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->confirmable:Lcom/hivemq/client/internal/checkpoint/Confirmable;

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return p1
.end method

.method public createStateful(IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 7

    .line 1
    new-instance v6, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)V

    return-object v6
.end method

.method public createStateful(IZLcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 1

    .line 2
    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-interface {p3, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;->onPublish(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)I

    move-result p3

    :goto_0
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->DEFAULT_NO_SUBSCRIPTION_IDENTIFIERS:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p1, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    iget-boolean v3, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    iget-wide v5, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCorrelationData()Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->optionalReadOnly(Ljava/nio/ByteBuffer;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadAsBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->copyBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-object v0
.end method

.method public getRawContentType()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public getRawCorrelationData()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getRawMessageExpiryInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    return-wide v0
.end method

.method public getRawPayload()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getRawPayloadFormatIndicator()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    return-object v0
.end method

.method public getRawResponseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    return-object v0
.end method

.method public getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    return-object v0
.end method

.method public bridge synthetic getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 1
    invoke-static {p0}, LL0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->partialHashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const/16 v0, 0x4cf

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 v0, 0x4d5

    .line 42
    .line 43
    :goto_0
    add-int/2addr v1, v0

    .line 44
    mul-int/lit8 v1, v1, 0x1f

    .line 45
    .line 46
    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    .line 47
    .line 48
    const/16 v0, 0x20

    .line 49
    .line 50
    ushr-long v4, v2, v0

    .line 51
    .line 52
    xor-long/2addr v2, v4

    .line 53
    long-to-int v0, v2

    .line 54
    add-int/2addr v1, v0

    .line 55
    mul-int/lit8 v1, v1, 0x1f

    .line 56
    .line 57
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    .line 58
    .line 59
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v0, v1

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 67
    .line 68
    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v1, v0

    .line 73
    mul-int/lit8 v1, v1, 0x1f

    .line 74
    .line 75
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 76
    .line 77
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    .line 83
    .line 84
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    add-int/2addr v1, v0

    .line 91
    return v1
.end method

.method public isRetain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    return v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "topic="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    const-string v2, "byte"

    const-string v3, ""

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", payload="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", messageExpiryInterval="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", payloadFormatIndicator="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", contentType="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", responseTopic="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", correlationData="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->toAttributeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttPublish{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConfirmable(Lcom/hivemq/client/internal/checkpoint/Confirmable;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 14

    new-instance v13, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-boolean v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    iget-wide v5, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iget-object v8, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v10, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v11

    move-object v0, v13

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V

    return-object v13
.end method
