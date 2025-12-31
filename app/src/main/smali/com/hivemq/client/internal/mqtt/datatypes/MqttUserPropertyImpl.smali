.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;


# instance fields
.field private final name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-void
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;
    .locals 2

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    invoke-direct {v1, v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-interface {p1}, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;->getName()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->compareTo(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-interface {p1}, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;->getValue()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->compareTo(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->compareTo(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)I

    move-result p1

    return p1
.end method

.method public encode(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public encodedLength()I
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public bridge synthetic getName()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->getName()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public bridge synthetic getValue()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->getValue()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
