.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode<",
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic additionalPropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder;->additionalPropertyLength(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)I

    move-result p1

    return p1
.end method

.method public additionalPropertyLength(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)I
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->getRawSessionExpiryInterval()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->intPropertyEncodedLength(JJ)I

    move-result v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->getRawServerReference()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodeAdditionalProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder;->encodeAdditionalProperties(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public encodeAdditionalProperties(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lio/netty/buffer/ByteBuf;)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->getRawSessionExpiryInterval()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/16 v0, 0x11

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V

    const/16 v0, 0x1c

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->getRawServerReference()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public bridge synthetic getDefaultReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder;->getDefaultReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .locals 1

    .line 2
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-object v0
.end method

.method public getFixedHeader()I
    .locals 1

    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder;->FIXED_HEADER:I

    return v0
.end method
