.class public Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;


# annotations
.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method

.method private readAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v2, "Server must not send AUTH"

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method private readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 3

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawEnhancedAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v2, "Server must not include auth in CONNACK"

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;->readAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;->readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
