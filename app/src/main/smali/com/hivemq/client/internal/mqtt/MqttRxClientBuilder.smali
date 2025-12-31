.class public Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
.super Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;"
    }
.end annotation


# instance fields
.field private advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

.field private simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V

    sget-object p1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->DEFAULT:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    return-void
.end method

.method private buildClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 4

    sget-object v0, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->of(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->buildClientConfig(Lcom/hivemq/client/mqtt/MqttVersion;Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;)Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildBlocking()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v0

    return-object v0
.end method

.method public buildRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    return-object v0
.end method

.method public bridge synthetic identifier(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
    .locals 0

    .line 2
    return-object p0
.end method

.method public bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverPort(I)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
    .locals 2

    .line 1
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    const-string v1, "Simple auth"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    return-object p0
.end method

.method public bridge synthetic simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method
