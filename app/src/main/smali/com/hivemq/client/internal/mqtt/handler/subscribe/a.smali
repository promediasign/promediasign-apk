.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/subscribe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->d(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)I

    move-result p1

    return p1
.end method
