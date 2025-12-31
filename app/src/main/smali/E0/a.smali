.class public abstract synthetic LE0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/hivemq/client/mqtt/MqttClient;)Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClient;->getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static b()Lcom/hivemq/client/mqtt/MqttClientBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
