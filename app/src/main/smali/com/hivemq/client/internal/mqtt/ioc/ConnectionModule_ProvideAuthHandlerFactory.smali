.class public final Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectAuthHandlerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
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

.field private final disconnectOnAuthHandlerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
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
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->connectProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->connectAuthHandlerLazyProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->disconnectOnAuthHandlerLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule;->provideAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->connectProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->connectAuthHandlerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->disconnectOnAuthHandlerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->provideAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->get()Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    move-result-object v0

    return-object v0
.end method
