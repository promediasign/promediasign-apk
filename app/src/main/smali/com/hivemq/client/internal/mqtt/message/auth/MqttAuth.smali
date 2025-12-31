.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;"
    }
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0

    invoke-direct {p0, p1, p4, p5}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public bridge synthetic getMethod()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method

.method public getRawData()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final synthetic getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 1
    invoke-static {p0}, LG0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->partialHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reasonCode= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->toAttributeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttAuth{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
