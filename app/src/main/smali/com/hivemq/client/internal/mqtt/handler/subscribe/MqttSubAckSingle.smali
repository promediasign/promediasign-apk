.class public Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->subscriptionHandler()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v1, p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;-><init>(Lio/reactivex/SingleObserver;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    invoke-interface {p1, v1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V

    return-void
.end method
