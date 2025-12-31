.class public Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;
.super Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Choose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;",
        ">;",
        "Lcom/hivemq/client/mqtt/MqttClientBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;
    .locals 0

    .line 2
    return-object p0
.end method

.method public bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;

    move-result-object v0

    return-object v0
.end method

.method public useMqttVersion5()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V

    return-object v0
.end method

.method public bridge synthetic useMqttVersion5()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;->useMqttVersion5()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object v0

    return-object v0
.end method
