.class public abstract Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.super Lcom/hivemq/client/internal/util/AsyncRuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
.end method
