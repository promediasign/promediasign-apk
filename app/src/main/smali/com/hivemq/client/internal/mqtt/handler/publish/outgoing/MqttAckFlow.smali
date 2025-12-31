.class abstract Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    return-void
.end method


# virtual methods
.method public abstract acknowledged(J)V
.end method

.method public abstract onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
.end method
