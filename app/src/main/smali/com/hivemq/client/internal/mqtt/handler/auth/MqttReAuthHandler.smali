.class public Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;
.source "SourceFile"


# instance fields
.field private flow:Lcom/hivemq/client/internal/rx/CompletableFlow;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;)V
    .locals 1

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)V

    return-void
.end method

.method public static synthetic h(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$readAuthSuccess$5(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$readAuthSuccess$7(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic j(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$readReAuth$9(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public static synthetic k(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$readDisconnect$11(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    return-void
.end method

.method public static synthetic l(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$readAuthSuccess$6(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method private synthetic lambda$onDisconnectEvent$12(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    const/4 p1, 0x0

    throw p1
.end method

.method private synthetic lambda$readAuthSuccess$5(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private synthetic lambda$readAuthSuccess$6(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->flow:Lcom/hivemq/client/internal/rx/CompletableFlow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/rx/CompletableFlow;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->flow:Lcom/hivemq/client/internal/rx/CompletableFlow;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onComplete()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v0, "Reauth was successful but the Completable has been cancelled."

    invoke-interface {p1, v0}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->flow:Lcom/hivemq/client/internal/rx/CompletableFlow;

    :cond_1
    return-void
.end method

.method private static synthetic lambda$readAuthSuccess$7(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v1, "Server AUTH with reason code SUCCESS not accepted."

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$readDisconnect$11(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private static synthetic lambda$readReAuth$10(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v1, "Server AUTH with reason code REAUTHENTICATE not accepted."

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$readReAuth$8(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private synthetic lambda$readReAuth$9(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public static synthetic m(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$onDisconnectEvent$12(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method

.method public static synthetic n(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$readReAuth$8(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$readReAuth$10(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method private readDisconnect(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 3

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->cancelTimeout()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq v0, v1, :cond_0

    new-instance v0, LG/c;

    const/16 v2, 0x12

    invoke-direct {v0, p0, p2, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanism(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->readAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->readDisconnect(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public getTimeoutReasonString()Ljava/lang/String;
    .locals 1

    const-string v0, "Timeout while waiting for AUTH or DISCONNECT."

    return-object v0
.end method

.method public onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq p1, v0, :cond_0

    new-instance p1, LG/c;

    const/16 v1, 0x13

    invoke-direct {p1, p0, p2, v1}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanism(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    :cond_0
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->flow:Lcom/hivemq/client/internal/rx/CompletableFlow;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->flow:Lcom/hivemq/client/internal/rx/CompletableFlow;

    :cond_1
    return-void
.end method

.method public readAuthSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v2, "Must not receive AUTH with reason code SUCCESS if client side AUTH is pending."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_DONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    new-instance p1, Lr0/d;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lr0/d;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;I)V

    new-instance v0, Lq0/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lq0/a;-><init>(Lio/netty/channel/ChannelInboundHandlerAdapter;I)V

    new-instance v1, Lr0/f;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lr0/f;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanismFutureResult(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public readReAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->isAllowServerReAuth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v2, "Must not receive AUTH with reason code REAUTHENTICATE."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v2, "Must not receive AUTH with reason code REAUTHENTICATE if reauth is still pending."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->CONTINUE_AUTHENTICATION:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_INIT:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    new-instance v0, Lr0/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, p1, v1}, Lr0/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;Ljava/lang/Object;I)V

    new-instance v1, Lr0/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lr0/e;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Object;I)V

    new-instance p1, Lr0/f;

    invoke-direct {p1, p2, v2}, Lr0/f;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;I)V

    invoke-virtual {p0, v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanismFutureResult(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method
