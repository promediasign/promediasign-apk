.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;


# instance fields
.field private final password:Ljava/nio/ByteBuffer;

.field private final username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "password"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const-string v0, "username"

    goto :goto_0

    :cond_2
    const-string v0, "username and password"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRawPassword()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MqttSimpleAuth{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->toAttributeString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x7d

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
