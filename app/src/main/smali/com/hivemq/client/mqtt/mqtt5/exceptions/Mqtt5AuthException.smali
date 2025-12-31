.class public Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;
.super Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.source "SourceFile"


# instance fields
.field private final auth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V

    iget-object p1, p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->auth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->auth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->auth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;

    move-result-object v0

    return-object v0
.end method

.method public getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->auth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;

    return-object v0
.end method
