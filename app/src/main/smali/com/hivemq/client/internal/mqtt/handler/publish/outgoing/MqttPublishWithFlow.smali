.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
.source "SourceFile"


# instance fields
.field private final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return-void
.end method


# virtual methods
.method public getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return-object v0
.end method
