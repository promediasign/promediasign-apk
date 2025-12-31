.class public Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;-><init>(ILcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 1
    invoke-static {p0}, LS0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->partialHashCode()I

    move-result v0

    return v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reasonCodes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->getReasonCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->toAttributeString()Ljava/lang/String;

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

    const-string v1, "MqttUnsubAck{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
