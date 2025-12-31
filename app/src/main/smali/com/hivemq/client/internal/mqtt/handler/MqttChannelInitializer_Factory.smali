.class public final Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;",
        ">;"
    }
.end annotation


# instance fields
.field private final authHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final clientConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final connAckFlowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final connectHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;",
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

.field private final disconnectHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final encoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final webSocketInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->clientConfigProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->connectProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->connAckFlowProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->encoderProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->connectHandlerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->disconnectHandlerProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->authHandlerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->webSocketInitializerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;"
        }
    .end annotation

    new-instance v9, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;",
            "Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;"
        }
    .end annotation

    new-instance v9, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;Ldagger/Lazy;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->clientConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->connectProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->connAckFlowProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->encoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->connectHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->disconnectHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->authHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->webSocketInitializerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->get()Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    move-result-object v0

    return-object v0
.end method
