.class public Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;
.super Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;
.source "SourceFile"


# instance fields
.field private final subAck:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;)V

    iget-object p1, p1, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->subAck:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->subAck:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->subAck:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;)V

    return-object v0
.end method
