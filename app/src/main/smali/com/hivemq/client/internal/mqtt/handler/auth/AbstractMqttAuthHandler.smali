.class abstract Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;
    }
.end annotation


# static fields
.field static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;-><init>()V

    sget-object p2, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->lambda$null$3(Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->lambda$readAuthContinue$0(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Boolean;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->lambda$callMechanismFutureResult$6(Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->lambda$callMechanismFuture$4(Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Boolean;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->lambda$null$5(Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic f(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->lambda$readAuthContinue$1(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public static synthetic g(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->lambda$readAuthContinue$2(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$callMechanismFuture$4(Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/f;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/f;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    invoke-virtual {p3, v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executeInEventLoop(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$callMechanismFutureResult$6(Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .locals 8

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v7, Lcom/hivemq/client/internal/mqtt/handler/auth/e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/auth/e;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Boolean;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v7}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executeInEventLoop(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$null$3(Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object p3, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v0, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {p3, v0, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p2, p3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$null$5(Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object p3, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string p4, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {p3, p4, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p2, p3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string p3, "Auth cancelled. Unexpected null result returned by auth mechanism."

    invoke-interface {p1, p3}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance p3, Ljava/lang/NullPointerException;

    const-string p4, "Result returned by auth mechanism must not be null."

    invoke-direct {p3, p4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p2, p1, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    const/4 p3, 0x0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$readAuthContinue$0(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private synthetic lambda$readAuthContinue$1(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;Lio/netty/channel/ChannelHandlerContext;)V
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

.method private static synthetic lambda$readAuthContinue$2(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v1, "Server auth not accepted."

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method private readAuthContinue(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v2, "Must not receive AUTH with reason code CONTINUE_AUTHENTICATION if client side AUTH is pending."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->CONTINUE_AUTHENTICATION:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_RESPONSE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)V

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/b;

    invoke-direct {v1, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/b;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)V

    new-instance p1, Lcom/hivemq/client/internal/mqtt/handler/auth/c;

    invoke-direct {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/c;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    invoke-virtual {p0, v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanismFutureResult(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private validateAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v2, "Auth method in AUTH must be the same as in the CONNECT."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public callMechanism(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {v0, v1, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public callMechanismFuture(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/ChannelHandlerContext;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/ssl/a;->l(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/d;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;I)V

    invoke-static {p1, v0}, Lio/netty/handler/ssl/a;->t(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/handler/auth/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v0, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {p2, v0, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p3, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public callMechanismFutureResult(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/ChannelHandlerContext;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/ssl/a;->l(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/d;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;I)V

    invoke-static {p1, v0}, Lio/netty/handler/ssl/a;->B(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/handler/auth/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v0, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {p2, v0, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p3, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTimeoutMs()J
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTimeoutReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-object v0
.end method

.method public final readAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->cancelTimeout()V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->validateAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$1;->$SwitchMap$com$hivemq$client$mqtt$mqtt5$message$auth$Mqtt5AuthReasonCode:[I

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->readReAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->readAuthSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->readAuthContinue(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract readAuthSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
.end method

.method public abstract readReAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
.end method
