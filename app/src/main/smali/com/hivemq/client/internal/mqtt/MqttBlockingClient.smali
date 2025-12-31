.class public Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    return-void
.end method

.method public static handleSubAck(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;
    .locals 2

    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;->getReasonCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    invoke-interface {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;

    const-string v1, "SUBACK contains at least one error code."

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public connect()Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
    .locals 1

    .line 1
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->connectUnsafe(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public disconnect()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)V

    return-void
.end method

.method public disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->disconnectUnsafe(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->blockingAwait()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getState()Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 1

    .line 1
    invoke-static {p0}, LE0/a;->a(Lcom/hivemq/client/mqtt/MqttClient;)Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    return-object v0
.end method

.method public publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;
    .locals 1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishUnsafe(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;

    new-instance v1, Lo0/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo0/a;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;I)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic publishWith()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    move-result-object p1

    return-object p1
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
    .locals 2

    .line 2
    const-string v0, "Global publish filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, p1, p2}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishesUnsafe(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;-><init>(Lio/reactivex/Flowable;)V

    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;
    .locals 1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object p1

    :try_start_0
    invoke-static {p0}, LE0/a;->a(Lcom/hivemq/client/mqtt/MqttClient;)Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnectedOrReconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribeUnsafe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->handleSubAck(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;

    new-instance v1, Lo0/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lo0/a;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;I)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic subscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;

    move-result-object v0

    return-object v0
.end method
