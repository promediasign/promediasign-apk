.class public Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;"
    }
.end annotation


# instance fields
.field private final assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

.field private final enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

.field private final responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

.field private final serverKeepAlive:I

.field private final serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final sessionExpiryInterval:J

.field private final sessionPresent:Z


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0

    invoke-direct {p0, p1, p11, p12}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput-boolean p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    iput-wide p3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    iput p5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    iput-object p9, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iput-object p10, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    iget-boolean v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    iget-wide v5, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    iget v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRawAssignedClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    return-object v0
.end method

.method public getRawEnhancedAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    return-object v0
.end method

.method public getRawServerKeepAlive()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    return v0
.end method

.method public getRawSessionExpiryInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    return-wide v0
.end method

.method public getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    return-object v0
.end method

.method public final synthetic getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 1
    invoke-static {p0}, LI0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

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
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x4cf

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x4d5

    .line 15
    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    .line 20
    .line 21
    const/16 v3, 0x20

    .line 22
    .line 23
    ushr-long v3, v1, v3

    .line 24
    .line 25
    xor-long/2addr v1, v3

    .line 26
    long-to-int v2, v1

    .line 27
    add-int/2addr v0, v2

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 36
    .line 37
    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v1, v0

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    .line 45
    .line 46
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    add-int/2addr v1, v0

    .line 60
    mul-int/lit8 v1, v1, 0x1f

    .line 61
    .line 62
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 63
    .line 64
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 72
    .line 73
    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v1, v0

    .line 78
    return v1
.end method

.method public isSessionPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    return v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reasonCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    const-string v3, ""

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", sessionExpiryInterval="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    int-to-long v1, v1

    cmp-long v6, v1, v4

    if-nez v6, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", serverKeepAlive="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", assignedClientIdentifier="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", enhancedAuth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    if-ne v1, v2, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", restrictions="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v1, :cond_5

    move-object v1, v3

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", responseInformation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", serverReference="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "MqttConnAck{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
