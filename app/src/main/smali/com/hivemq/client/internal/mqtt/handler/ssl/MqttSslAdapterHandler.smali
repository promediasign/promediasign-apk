.class Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# instance fields
.field private handshakeDone:Z

.field private final host:Ljava/lang/String;

.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final onError:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final onSuccess:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final sslHandler:Lio/netty/handler/ssl/SslHandler;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslHandler;Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/SslHandler;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->handshakeDone:Z

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->sslHandler:Lio/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->host:Ljava/lang/String;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->onSuccess:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->onError:Ljava/util/function/BiConsumer;

    return-void
.end method

.method private handshakeComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/ssl/SslHandshakeCompletionEvent;)V
    .locals 2

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->setHandshakeDone()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslCompletionEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p2, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->host:Ljava/lang/String;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->sslHandler:Lio/netty/handler/ssl/SslHandler;

    invoke-virtual {v1}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Hostname verification failed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->onSuccess:Ljava/util/function/Consumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslCompletionEvent;->cause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setHandshakeDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->handshakeDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->handshakeDone:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->setHandshakeDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-eqz v0, :cond_0

    check-cast p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;->handshakeComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/ssl/SslHandshakeCompletionEvent;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method
