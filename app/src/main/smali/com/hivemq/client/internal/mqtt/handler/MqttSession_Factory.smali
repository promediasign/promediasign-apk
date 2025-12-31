.class public final Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/handler/MqttSession;",
        ">;"
    }
.end annotation


# instance fields
.field private final incomingQosHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final outgoingQosHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriptionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;->subscriptionHandlerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;->incomingQosHandlerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;->outgoingQosHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)Lcom/hivemq/client/internal/mqtt/handler/MqttSession;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;-><init>(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/handler/MqttSession;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;->subscriptionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;->incomingQosHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;->outgoingQosHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;->get()Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    move-result-object v0

    return-object v0
.end method
