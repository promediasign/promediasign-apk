.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
    }
.end annotation


# virtual methods
.method public abstract connect()Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
.end method

.method public abstract disconnect()V
.end method

.method public abstract publishWith()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
.end method

.method public abstract subscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation
.end method
