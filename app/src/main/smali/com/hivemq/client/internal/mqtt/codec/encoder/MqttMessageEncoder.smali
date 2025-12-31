.class public abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public castAndEncode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public abstract encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;",
            ")",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation
.end method
