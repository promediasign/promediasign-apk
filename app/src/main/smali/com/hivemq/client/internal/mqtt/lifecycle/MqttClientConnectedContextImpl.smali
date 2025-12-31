.class public Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_3_1_1:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    return-object v0
.end method
