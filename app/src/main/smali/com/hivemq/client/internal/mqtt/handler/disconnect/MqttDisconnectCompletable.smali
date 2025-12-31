.class public Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;
.super Lio/reactivex/Completable;
.source "SourceFile"


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final disconnect:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;->disconnect:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getChannel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v1, "disconnect"

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    return-void

    :cond_1
    new-instance v1, Lcom/hivemq/client/internal/rx/CompletableFlow;

    invoke-direct {v1, p1}, Lcom/hivemq/client/internal/rx/CompletableFlow;-><init>(Lio/reactivex/CompletableObserver;)V

    invoke-interface {p1, v1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;->disconnect:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    return-void
.end method
