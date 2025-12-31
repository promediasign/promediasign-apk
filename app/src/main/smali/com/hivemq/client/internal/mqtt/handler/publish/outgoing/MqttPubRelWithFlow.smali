.class abstract Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;
    }
.end annotation


# instance fields
.field private final pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    return-void
.end method


# virtual methods
.method public getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    return-object v0
.end method
