.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->a(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)I

    move-result p1

    return p1
.end method
