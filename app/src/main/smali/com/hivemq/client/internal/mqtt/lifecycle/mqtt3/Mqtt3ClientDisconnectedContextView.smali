.class public Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

.field private final reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

.field private final source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->cause:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    new-instance p2, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    invoke-direct {p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V

    invoke-direct {v0, v1, p1, p0, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;)V

    return-object v0
.end method
