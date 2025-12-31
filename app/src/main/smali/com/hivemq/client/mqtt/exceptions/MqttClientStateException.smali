.class public Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;
.super Lcom/hivemq/client/internal/util/AsyncRuntimeException;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;->copy()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;-><init>(Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;)V

    return-object v0
.end method
