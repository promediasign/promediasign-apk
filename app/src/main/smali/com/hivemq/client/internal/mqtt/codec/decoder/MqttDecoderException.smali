.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->MALFORMED_PACKET:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-direct {p0, v0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-object v0
.end method
