.class public Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

.field private static final STATE_CLOSED:Ljava/lang/Object;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

.field private state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/MqttSession;)V
    .locals 1

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->lambda$null$1(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic b(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->lambda$onDisconnectEvent$5(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic c(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->lambda$onDisconnectEvent$2(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic d(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->lambda$onDisconnectEvent$6(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method private disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expire(Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->reconnect(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setConnectionConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->lambda$disconnect$0(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    return-void
.end method

.method public static synthetic f(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->lambda$onDisconnectEvent$4(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic g(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->lambda$null$3(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method private synthetic lambda$disconnect$0(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->writeDisconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    return-void
.end method

.method private synthetic lambda$null$1(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 1

    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p3, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;

    invoke-direct {p3, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;-><init>(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;)V

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;->getFlow()Lcom/hivemq/client/internal/rx/CompletableFlow;

    move-result-object p1

    new-instance p2, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$null$3(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method

.method private synthetic lambda$onDisconnectEvent$2(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 7

    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p4, p1

    check-cast p4, Lio/netty/channel/socket/DuplexChannel;

    invoke-interface {p4}, Lio/netty/channel/socket/DuplexChannel;->shutdownOutput()Lio/netty/channel/ChannelFuture;

    move-result-object p4

    new-instance v6, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;I)V

    invoke-interface {p4, v6}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;->getFlow()Lcom/hivemq/client/internal/rx/CompletableFlow;

    move-result-object p1

    new-instance p2, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onDisconnectEvent$4(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object p3

    new-instance v0, Lt0/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lt0/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;I)V

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private synthetic lambda$onDisconnectEvent$5(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method

.method private synthetic lambda$onDisconnectEvent$6(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method

.method private readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v2, "Must not receive second CONNACK."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private readDisconnect(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    const-string v1, "Server sent DISCONNECT."

    invoke-direct {v0, p2, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;Ljava/lang/String;)V

    sget-object p2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    :cond_0
    return-void
.end method

.method private reconnect(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectDefaults()Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    new-instance v12, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getKeepAlive()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSessionExpiryInterval()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSessionExpiryInterval()J

    move-result-wide v5

    new-instance v7, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getReceiveMaximum()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendMaximum()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getMaximumPacketSize()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendMaximumPacketSize()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getTopicAliasMaximum()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendTopicAliasMaximum()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->isProblemInformationRequested()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->isResponseInformationRequested()Z

    move-result v21

    move-object v13, v7

    invoke-direct/range {v13 .. v21}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;-><init>(IIIIIIZZ)V

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v8

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    const/4 v10, 0x0

    sget-object v11, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const/4 v9, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;-><init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-static {v1, v2, v3, v12, v4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method private writeDisconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    invoke-direct {v1, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;-><init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    const-string v1, "Server closed connection without DISCONNECT."

    invoke-direct {v0, v1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto :goto_0

    :cond_0
    instance-of p1, v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;

    if-eqz p1, :cond_1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;

    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->access$000(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->access$100(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lio/netty/channel/Channel;

    move-result-object p1

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->access$200(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->access$200(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;->getFlow()Lcom/hivemq/client/internal/rx/CompletableFlow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->readDisconnect(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public disconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v1, LD/f;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, LD/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executeInEventLoop(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-direct {v0, p2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    sget-object p2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Ljava/io/IOException;

    if-nez p1, :cond_1

    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v0, "Exception while disconnecting: {}"

    invoke-interface {p1, v0, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 8

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v3, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-interface {v3}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getDisconnect()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->getRawSessionExpiryInterval()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v4

    if-eqz v4, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->isCleanStop()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "Session expiry interval must not be set in DISCONNECT if it was set to 0 in CONNECT"

    invoke-interface {v1, v2}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->extend()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->sessionExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->setSessionExpiryInterval(J)V

    :cond_2
    :goto_0
    instance-of v1, p2, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    if-eqz v1, :cond_3

    move-object v4, p2

    check-cast v4, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v1, v2, :cond_4

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance v0, Lt0/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v3, p2, v1}, Lt0/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;I)V

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance v0, Lt0/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v3, p2, v1}, Lt0/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance v0, Lt0/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v3, p2, v1}, Lt0/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;I)V

    :goto_1
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
