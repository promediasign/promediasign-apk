.class public Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;
.super Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.source "SourceFile"


# instance fields
.field private final pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V

    iget-object p1, p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    move-result-object v0

    return-object v0
.end method

.method public getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    return-object v0
.end method
