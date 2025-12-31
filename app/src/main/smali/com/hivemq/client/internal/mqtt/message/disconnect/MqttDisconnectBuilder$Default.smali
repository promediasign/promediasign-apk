.class public Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    return-void
.end method


# virtual methods
.method public self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    move-result-object v0

    return-object v0
.end method
