.class public Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;
.super Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;->copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;)V

    return-object v0
.end method
