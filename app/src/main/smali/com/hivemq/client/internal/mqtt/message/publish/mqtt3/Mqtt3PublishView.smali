.class public Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;


# static fields
.field public static final JAVA_MAPPER:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAPPER:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk1/p;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->MAPPER:Lio/reactivex/functions/Function;

    new-instance v0, LT0/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LT0/b;-><init>(I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->JAVA_MAPPER:Ljava/util/function/Function;

    return-void
.end method

.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return-void
.end method

.method public static delegate(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;Z)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 14

    new-instance v13, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    sget-object v11, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const/4 v12, 0x0

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v12}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V

    return-object v13
.end method

.method public static of(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    check-cast p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    return-object v0
.end method

.method public static statefulDelegate(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;IZ)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->DEFAULT_NO_SUBSCRIPTION_IDENTIFIERS:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object p0

    return-object p0
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "topic="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", payload="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->isRetain()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRetain()Z
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->isRetain()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MqttPublish{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->toAttributeString()Ljava/lang/String;

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
