.class public Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

.field private final source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->cause:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_3_1_1:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V

    return-object v0
.end method
