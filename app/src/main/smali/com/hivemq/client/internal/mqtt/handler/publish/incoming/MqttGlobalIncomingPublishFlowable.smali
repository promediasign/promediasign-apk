.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final filter:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

.field private final manualAcknowledgement:Z


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Z)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->filter:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-boolean p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->manualAcknowledgement:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->incomingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    move-result-object v4

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->subscriptionHandler()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    move-result-object v0

    new-instance v7, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->filter:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    iget-boolean v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->manualAcknowledgement:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;-><init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)V

    invoke-interface {p1, v7}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    invoke-virtual {v0, v7}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->subscribeGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V

    return-void
.end method
