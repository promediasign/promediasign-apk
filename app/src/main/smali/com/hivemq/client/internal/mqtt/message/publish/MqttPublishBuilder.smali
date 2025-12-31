.class public abstract Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field correlationData:Ljava/nio/ByteBuffer;

.field messageExpiryInterval:J

.field payload:Ljava/nio/ByteBuffer;

.field payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

.field qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

.field retain:Z

.field topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

.field userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    return-void
.end method


# virtual methods
.method public contentType(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    const-string v0, "Content type"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->stringOrNull(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    return-object p1
.end method

.method public correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TB;"
        }
    .end annotation

    const-string v0, "Correlation data"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataOrNull(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->correlationData:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    return-object p1
.end method

.method public messageExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    const-string v0, "Message expiry interval"

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedInt(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    return-object p1
.end method

.method public qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TB;"
        }
    .end annotation

    const-string v0, "QoS"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public topic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    return-object p1
.end method
