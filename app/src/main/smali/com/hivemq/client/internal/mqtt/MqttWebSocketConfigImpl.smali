.class public Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;


# instance fields
.field private final handshakeTimeoutMs:I

.field private final queryString:Ljava/lang/String;

.field private final serverPath:Ljava/lang/String;

.field private final subprotocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    const-string v1, "mqtt"

    const/16 v2, 0x2710

    const-string v3, ""

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    iput p4, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    iget p1, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHandshakeTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSubprotocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    return v0
.end method
