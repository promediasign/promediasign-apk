.class public interface abstract Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract connectionComponentBuilder()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
.end method

.method public abstract incomingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
.end method

.method public abstract outgoingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
.end method

.method public abstract subscriptionHandler()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;
.end method
