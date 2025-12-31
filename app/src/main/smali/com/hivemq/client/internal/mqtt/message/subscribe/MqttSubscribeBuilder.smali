.class public abstract Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

.field private final subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/b;->v()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    return-void
.end method

.method private buildFirstSubscription()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    :cond_0
    return-void
.end method

.method private ensureAtLeastOneSubscription()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "At least one subscription must be added."

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    return-void
.end method

.method private getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .locals 3

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->buildFirstSubscription()V

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->ensureAtLeastOneSubscription()V

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method

.method public qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    return-object p1
.end method
