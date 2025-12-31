.class public Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;
    }
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->cause:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getDisconnect()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->cause:Ljava/lang/Throwable;

    instance-of v1, v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    move-result-object v0

    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-object v0
.end method
