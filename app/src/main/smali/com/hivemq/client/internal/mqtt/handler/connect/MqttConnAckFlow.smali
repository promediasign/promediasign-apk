.class public Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;
    }
.end annotation


# instance fields
.field private final attempts:I

.field private final disposable:Lio/reactivex/disposables/Disposable;

.field private done:Z

.field private final observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;

    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;-><init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$1;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->attempts:I

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    iget p1, p1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->attempts:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Lio/reactivex/SingleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    new-instance p1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;-><init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$1;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->attempts:I

    return-void
.end method


# virtual methods
.method public getAttempts()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->attempts:I

    return v0
.end method

.method public getDisposable()Lio/reactivex/disposables/Disposable;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->done:Z

    return v0
.end method
