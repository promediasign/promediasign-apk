.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flow"
.end annotation


# instance fields
.field private final observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation
.end field

.field private final outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

.field private result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleObserver;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->observer:Lio/reactivex/SingleObserver;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->init()Z

    return-void
.end method

.method private done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->setDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->getRawError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->request(J)V

    return-void
.end method


# virtual methods
.method public acknowledged(J)V
    .locals 0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    return-void
.end method

.method public onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->acknowledged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    :goto_0
    return-void
.end method
