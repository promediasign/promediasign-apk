.class public abstract Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private localAddress:Ljava/net/InetSocketAddress;

.field private mqttConnectTimeoutMs:I

.field private serverAddress:Ljava/net/InetSocketAddress;

.field private serverHost:Ljava/lang/Object;

.field private serverPort:I

.field private socketConnectTimeoutMs:I

.field private sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

.field private webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localhost"

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    const v0, 0xea60

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localhost"

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    const v0, 0xea60

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    iget v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iget v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    iget p1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    return-void
.end method

.method private getServerAddress()Ljava/net/InetSocketAddress;
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    instance-of v1, v0, Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->getServerPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->getServerPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/InetSocketAddressUtil;->create(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method private getServerPort()I
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    if-nez v0, :cond_1

    const/16 v0, 0x75b

    return v0

    :cond_1
    const/16 v0, 0x50

    return v0

    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    if-nez v0, :cond_3

    const/16 v0, 0x22b3

    return v0

    :cond_3
    const/16 v0, 0x1bb

    return v0
.end method

.method private setServerHost(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    :cond_0
    return-void
.end method


# virtual methods
.method public buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 9

    new-instance v8, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iget v6, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    iget v7, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;II)V

    return-object v8
.end method

.method public abstract self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    const-string v0, "Server host"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->setServerHost(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    const-string v0, "Server port"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedShort(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    :cond_1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method
