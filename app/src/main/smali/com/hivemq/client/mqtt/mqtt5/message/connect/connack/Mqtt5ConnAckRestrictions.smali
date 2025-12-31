.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;->DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-void
.end method
