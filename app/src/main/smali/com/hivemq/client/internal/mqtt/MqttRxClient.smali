.class public Lcom/hivemq/client/internal/mqtt/MqttRxClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClient;


# static fields
.field private static final PUBLISH_MAPPER:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk1/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->PUBLISH_MAPPER:Lio/reactivex/functions/Function;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    return-void
.end method


# virtual methods
.method public connectUnsafe(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V

    return-object v0
.end method

.method public disconnectUnsafe(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)Lio/reactivex/Completable;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    return-object v0
.end method

.method public getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

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

.method public publishUnsafe(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    return-object v0
.end method

.method public publishesUnsafe(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Z)",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, p1, v1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;-><init>(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Z)V

    return-object v0
.end method

.method public subscribeUnsafe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    return-object v0
.end method

.method public toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    return-object v0
.end method
