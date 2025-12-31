.class public Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;
.super Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.source "SourceFile"


# instance fields
.field private final disconnect:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V

    iget-object p1, p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->disconnect:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->disconnect:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->disconnect:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->disconnect:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    move-result-object v0

    return-object v0
.end method

.method public getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->disconnect:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    return-object v0
.end method
