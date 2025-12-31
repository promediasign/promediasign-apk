.class public final Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final connectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;->clientConfigProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;->connectProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;

    invoke-direct {v0, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    invoke-direct {v0, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;->clientConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;->connectProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;->get()Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    move-result-object v0

    return-object v0
.end method
