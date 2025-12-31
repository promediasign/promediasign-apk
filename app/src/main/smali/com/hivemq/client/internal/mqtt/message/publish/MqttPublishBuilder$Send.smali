.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Send"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            "TP;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 1

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contentType(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->contentType(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic messageExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic payload([B)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payload([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<",
            "TP;>;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public send()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;->build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method
