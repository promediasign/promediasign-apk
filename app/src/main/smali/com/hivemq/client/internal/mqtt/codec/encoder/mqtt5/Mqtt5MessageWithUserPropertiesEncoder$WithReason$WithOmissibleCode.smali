.class abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithOmissibleCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode$WithId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode<",
        "TR;>;R::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<",
        "TM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->getFixedHeader()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;Lio/netty/buffer/ByteBuf;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            "II)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->encodeAdditionalVariableHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->getDefaultReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object p1

    if-eq v0, p1, :cond_1

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;->getCode()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->encodeAdditionalProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;Lio/netty/buffer/ByteBuf;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public additionalPropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public additionalRemainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;

    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;

    invoke-virtual/range {p0 .. p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;Lio/netty/buffer/ByteBuf;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            "III)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method

.method public encodeAdditionalProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public encodeAdditionalVariableHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract getDefaultReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract getFixedHeader()I
.end method

.method public bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;II)I
    .locals 0

    .line 2
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;

    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;II)I

    move-result p1

    return p1
.end method

.method public final propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->additionalPropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic propertyLengthWithHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;I)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->propertyLengthWithHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;I)I

    move-result p1

    return p1
.end method

.method public final propertyLengthWithHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;I)I"
        }
    .end annotation

    .line 2
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->getDefaultReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->propertyLengthWithHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)I

    move-result p1

    return p1
.end method

.method public final remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;->additionalRemainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
