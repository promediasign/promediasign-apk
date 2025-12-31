.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;


# static fields
.field public static final DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-void
.end method


# virtual methods
.method public abstract getCorrelationData()Lj$/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPayloadAsBytes()[B
.end method

.method public abstract getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
.end method
