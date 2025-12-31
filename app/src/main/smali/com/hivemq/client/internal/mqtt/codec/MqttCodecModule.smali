.class public abstract Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static provideMessageDecoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;"
        }
    .end annotation

    sget-object v0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule$1;->$SwitchMap$com$hivemq$client$mqtt$MqttVersion:[I

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static provideMessageEncoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;"
        }
    .end annotation

    sget-object v0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule$1;->$SwitchMap$com$hivemq$client$mqtt$MqttVersion:[I

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method
