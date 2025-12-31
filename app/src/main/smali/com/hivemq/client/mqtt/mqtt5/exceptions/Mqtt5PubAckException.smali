.class public Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;
.super Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.source "SourceFile"


# instance fields
.field private final pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V

    iget-object p1, p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    move-result-object v0

    return-object v0
.end method

.method public getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    return-object v0
.end method
