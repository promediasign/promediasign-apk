.class public abstract synthetic LL0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-void
.end method

.method public static a(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 0

    .line 1
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    .line 2
    .line 3
    return-object p0
.end method
