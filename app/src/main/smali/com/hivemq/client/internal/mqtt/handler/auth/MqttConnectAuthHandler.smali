.class public Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 1

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    const-string p2, "Auth mechanism"

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/hivemq/client/internal/util/Checks;->stateNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, LA/g;->x(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)V

    return-void
.end method

.method public static synthetic h(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$writeConnect$0(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$onDisconnectEvent$7(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method

.method public static synthetic j(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$writeConnect$2(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic k(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$readConnAckSuccess$4(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$readConnAckSuccess$6(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onDisconnectEvent$7(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    const/4 p1, 0x0

    throw p1
.end method

.method private synthetic lambda$readConnAckError$3(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private synthetic lambda$readConnAckSuccess$4(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private synthetic lambda$readConnAckSuccess$5(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;)V

    const-string v2, "auth"

    invoke-interface {v0, p0, v2, v1}, Lio/netty/channel/ChannelPipeline;->replace(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method private static synthetic lambda$readConnAckSuccess$6(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v1, "Server CONNACK with reason code SUCCESS not accepted."

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$writeConnect$0(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private synthetic lambda$writeConnect$1(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->createStateful(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    move-result-object p1

    invoke-interface {p4, p1, p3}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private static synthetic lambda$writeConnect$2(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v0, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic m(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$readConnAckSuccess$5(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public static synthetic n(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$readConnAckError$3(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    return-void
.end method

.method public static synthetic o(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$writeConnect$1(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method private readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->cancelTimeout()V

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->readConnAckError(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->validateConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->readConnAckSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private readConnAckError(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 3

    new-instance v0, LG/c;

    const/16 v1, 0x11

    invoke-direct {v0, p0, p2, v1}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanism(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONNECT failed as CONNACK contained an Error Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    sget-object p2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    return-void
.end method

.method private readConnAckSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v2, "Must not receive CONNACK with reason code SUCCESS if client side AUTH is pending."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_DONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    new-instance p1, Lr0/d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lr0/d;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;I)V

    new-instance v0, Lr0/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lr0/e;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Object;I)V

    new-instance v1, Lg1/e;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Lg1/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanismFutureResult(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private validateConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawEnhancedAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v3, "Auth method in CONNACK must be present."

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, v0, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;->getMethod()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v3, "Auth method in CONNACK must be the same as in the CONNECT."

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private writeConnect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_INIT:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    new-instance v1, Lr0/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lr0/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;Ljava/lang/Object;I)V

    new-instance v2, Lr0/b;

    invoke-direct {v2, p0, p1, v0, p2}, Lr0/b;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;)V

    new-instance p1, Lr0/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1, v2, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanismFuture(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LB0/a;->a(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->readAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public final synthetic close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, LB0/a;->b(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public final synthetic connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, LB0/a;->c(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public final synthetic deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, LB0/a;->d(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public final synthetic disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, LB0/a;->e(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public final synthetic flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LB0/a;->f(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public getTimeoutReasonString()Ljava/lang/String;
    .locals 1

    const-string v0, "Timeout while waiting for AUTH or CONNACK."

    return-object v0
.end method

.method public onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq p1, v0, :cond_0

    new-instance p1, LG/c;

    const/16 v1, 0x10

    invoke-direct {p1, p0, p2, v1}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanism(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    :cond_0
    return-void
.end method

.method public final synthetic read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LB0/a;->g(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public readAuthSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v2, "Must not receive AUTH with reason code SUCCESS during connect auth."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method public readReAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v2, "Must not receive AUTH with reason code REAUTHENTICATE during connect auth."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->writeConnect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method
