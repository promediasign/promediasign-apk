.class public abstract Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private noLocal:Z

.field private qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private retainAsPublished:Z

.field private retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

.field private topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal:Z

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;->DEFAULT_RETAIN_HANDLING:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainAsPublished:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    .locals 8

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    const-string v1, "Topic filter"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->isShared()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "It is a Protocol Error to set no local to true on a Shared Subscription."

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-boolean v5, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal:Z

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iget-boolean v7, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainAsPublished:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZLcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;Z)V

    return-object v0
.end method

.method public qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TB;"
        }
    .end annotation

    const-string v0, "QoS"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    return-object p1
.end method
