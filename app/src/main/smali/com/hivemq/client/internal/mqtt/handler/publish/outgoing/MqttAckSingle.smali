.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnectedOrReconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->outgoingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->getPublishFlowables()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    move-result-object v1

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v2, p1, v3, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;-><init>(Lio/reactivex/SingleObserver;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V

    invoke-interface {p1, v2}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    new-instance p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-direct {p1, v0, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    invoke-static {p1}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->add(Lio/reactivex/Flowable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    :goto_0
    return-void
.end method
