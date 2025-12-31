.class abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithReason"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder<",
        "TM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;-><init>()V

    return-void
.end method

.method private reasonStringLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->getRawReasonString()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;

    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;Lio/netty/buffer/ByteBuf;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            "I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/16 v0, 0x1f

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->getRawReasonString()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    :cond_0
    const/4 v0, 0x1

    if-gt p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    :cond_1
    return-void
.end method

.method public final omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->reasonStringLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I

    move-result v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;II)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;II)I

    move-result p1

    return p1
.end method

.method public propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;II)I"
        }
    .end annotation

    .line 2
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result p1

    :goto_0
    sub-int/2addr p2, p1

    return p2

    :cond_1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->reasonStringLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I

    move-result p1

    goto :goto_0

    :cond_2
    return p2
.end method
