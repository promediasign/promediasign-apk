.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubAckEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode$WithId;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode$WithId<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubAckEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode$WithId;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubAckEncoder;->getDefaultReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;
    .locals 1

    .line 2
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    return-object v0
.end method

.method public getFixedHeader()I
    .locals 1

    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubAckEncoder;->FIXED_HEADER:I

    return v0
.end method
