.class public Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;

.field public static final REASON_CODES_ALL_SUCCESS:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/b;->z()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;->REASON_CODES_ALL_SUCCESS:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;->INSTANCE:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delegate(I)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;
    .locals 4

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;->REASON_CODES_ALL_SUCCESS:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    const/4 v2, 0x0

    sget-object v3, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;-><init>(ILcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MqttUnsubAck{}"

    return-object v0
.end method
