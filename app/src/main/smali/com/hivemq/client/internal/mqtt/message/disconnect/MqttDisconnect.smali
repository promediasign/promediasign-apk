.class public Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;


# instance fields
.field private final serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final sessionExpiryInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const/4 v5, 0x0

    sget-object v6, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    sput-object v7, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0

    invoke-direct {p0, p1, p5, p6}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput-wide p2, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    iget-wide v5, p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    return-object v0
.end method

.method public getRawServerReference()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public getRawSessionExpiryInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    return-wide v0
.end method

.method public final synthetic getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 1
    invoke-static {p0}, LJ0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->partialHashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    .line 8
    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    ushr-long v3, v1, v3

    .line 12
    .line 13
    xor-long/2addr v1, v3

    .line 14
    long-to-int v2, v1

    .line 15
    add-int/2addr v0, v2

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 19
    .line 20
    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v0

    .line 25
    return v1
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reasonCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    const-wide/16 v3, -0x1

    const-string v5, ""

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    move-object v1, v5

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", sessionExpiryInterval="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", serverReference="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->toAttributeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttDisconnect{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
