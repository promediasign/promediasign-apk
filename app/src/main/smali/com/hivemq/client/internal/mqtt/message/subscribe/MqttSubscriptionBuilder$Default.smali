.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase;
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    return-object v0
.end method
