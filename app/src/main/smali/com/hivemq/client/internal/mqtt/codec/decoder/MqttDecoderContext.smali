.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final directBufferAuth:Z

.field private final directBufferCorrelationData:Z

.field private final directBufferPayload:Z

.field private final maximumPacketSize:I

.field private final problemInformationRequested:Z

.field private final responseInformationRequested:Z

.field private final topicAliasMapping:[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

.field private final validatePayloadFormat:Z


# direct methods
.method public constructor <init>(IIZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->maximumPacketSize:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-array p1, p2, [Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    :goto_0
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->topicAliasMapping:[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iput-boolean p3, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->problemInformationRequested:Z

    iput-boolean p4, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->responseInformationRequested:Z

    iput-boolean p5, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->validatePayloadFormat:Z

    iput-boolean p6, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferPayload:Z

    iput-boolean p7, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferAuth:Z

    iput-boolean p8, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferCorrelationData:Z

    return-void
.end method


# virtual methods
.method public getMaximumPacketSize()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->maximumPacketSize:I

    return v0
.end method

.method public getTopicAliasMapping()[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->topicAliasMapping:[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    return-object v0
.end method

.method public isProblemInformationRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->problemInformationRequested:Z

    return v0
.end method

.method public isResponseInformationRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->responseInformationRequested:Z

    return v0
.end method

.method public useDirectBufferAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferAuth:Z

    return v0
.end method

.method public useDirectBufferCorrelationData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferCorrelationData:Z

    return v0
.end method

.method public useDirectBufferPayload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferPayload:Z

    return v0
.end method

.method public validatePayloadFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->validatePayloadFormat:Z

    return v0
.end method
