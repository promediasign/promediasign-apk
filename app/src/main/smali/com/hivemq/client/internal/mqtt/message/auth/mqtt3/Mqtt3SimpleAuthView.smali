.class public Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
