.class abstract Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3MessageDecoderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static wrongReturnCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "wrong return code"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
