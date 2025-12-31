.class public abstract Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode<",
        "TR;>;",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;"
    }
.end annotation


# instance fields
.field private final packetIdentifier:I


# direct methods
.method public constructor <init>(ILcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITR;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->packetIdentifier:I

    return-void
.end method


# virtual methods
.method public getPacketIdentifier()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->packetIdentifier:I

    return v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packetIdentifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->packetIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->toAttributeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
