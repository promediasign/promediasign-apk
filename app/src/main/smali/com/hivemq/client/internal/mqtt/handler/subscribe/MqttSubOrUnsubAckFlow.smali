.class Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;",
        "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field private final observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleObserver;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;->observer:Lio/reactivex/SingleObserver;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->setDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->setDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
