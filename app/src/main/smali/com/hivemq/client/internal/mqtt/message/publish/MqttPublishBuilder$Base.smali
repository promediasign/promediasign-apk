.class abstract Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<",
        "TB;>;>",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<",
        "TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 15

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    const-string v1, "Topic"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payload:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-boolean v6, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->retain:Z

    iget-wide v7, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iget-object v10, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v11, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v12, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->correlationData:Ljava/nio/ByteBuffer;

    iget-object v13, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V

    return-object v0
.end method

.method public payload([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    invoke-static {p1}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;

    return-object p1
.end method
