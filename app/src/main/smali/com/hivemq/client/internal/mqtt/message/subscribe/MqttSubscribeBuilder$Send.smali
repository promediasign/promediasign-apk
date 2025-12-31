.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Send"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "TP;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<",
            "TP;>;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public send()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method
