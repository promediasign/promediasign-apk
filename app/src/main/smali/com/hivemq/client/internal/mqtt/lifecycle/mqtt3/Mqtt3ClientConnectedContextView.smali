.class public Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

.field private final connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->of(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    move-result-object p0

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->of(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;)V

    return-object v0
.end method
