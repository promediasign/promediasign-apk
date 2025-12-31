.class public Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientConfig;


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    return-void
.end method


# virtual methods
.method public getState()Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    return-object v0
.end method
