.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field public static final DEFAULT_RETAIN_HANDLING:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->SEND:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;->DEFAULT_RETAIN_HANDLING:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    return-void
.end method
