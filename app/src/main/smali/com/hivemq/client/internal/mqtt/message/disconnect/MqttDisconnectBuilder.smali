.class public abstract Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

.field private reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private sessionExpiryInterval:J

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->sessionExpiryInterval:J

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->sessionExpiryInterval:J

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->getRawSessionExpiryInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->sessionExpiryInterval:J

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->getRawServerReference()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->getRawReasonString()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .locals 8

    new-instance v7, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->sessionExpiryInterval:J

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v7
.end method

.method public reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;",
            ")TB;"
        }
    .end annotation

    const-string v0, "Reason Code"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    return-object p1
.end method

.method public reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public sessionExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    const-string v0, "Session expiry interval"

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedInt(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->sessionExpiryInterval:J

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    return-object p1
.end method
