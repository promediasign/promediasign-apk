.class public Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# instance fields
.field private final localAddress:Ljava/net/InetSocketAddress;

.field private final mqttConnectTimeoutMs:I

.field private final serverAddress:Ljava/net/InetSocketAddress;

.field private final socketConnectTimeoutMs:I

.field private final sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

.field private final webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    const-string v0, "localhost"

    const/16 v1, 0x75b

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/InetSocketAddressUtil;->create(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    const/16 v6, 0x2710

    const v7, 0xea60

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;II)V

    sput-object v8, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iput p6, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

    iput p7, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

    iget v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    iget p1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMqttConnectTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    return v0
.end method

.method public getRawLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getRawProxyConfig()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawSslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    return-object v0
.end method

.method public getRawWebSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getServerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getSocketConnectTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    add-int/2addr v1, v0

    return v1
.end method
