.class public Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;


# instance fields
.field private final maximumPacketSize:I

.field private final maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private final receiveMaximum:I

.field private final retainAvailable:Z

.field private final sharedSubscriptionAvailable:Z

.field private final subscriptionIdentifiersAvailable:Z

.field private final topicAliasMaximum:I

.field private final wildcardSubscriptionAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v9, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;->DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const v1, 0xffff

    const v2, 0x10000004

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;-><init>(IIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZ)V

    sput-object v9, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    return-void
.end method

.method public constructor <init>(IIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    iput p3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-boolean p5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    iput-boolean p6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    iput-boolean p7, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    iput-boolean p8, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    return-void
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveMaximum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maximumPacketSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topicAliasMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maximumQos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retainAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wildcardSubscriptionAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sharedSubscriptionAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionIdentifiersAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areSubscriptionIdentifiersAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    iget v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    iget v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    iget v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    iget-boolean v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    iget-boolean v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    iget-boolean v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    iget-boolean p1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    return v0
.end method

.method public getMaximumQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-object v0
.end method

.method public getReceiveMaximum()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    return v0
.end method

.method public getTopicAliasMaximum()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x1f

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    .line 25
    .line 26
    const/16 v2, 0x4d5

    .line 27
    .line 28
    const/16 v3, 0x4cf

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/16 v0, 0x4cf

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v0, 0x4d5

    .line 36
    .line 37
    :goto_0
    add-int/2addr v1, v0

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const/16 v0, 0x4cf

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v0, 0x4d5

    .line 48
    .line 49
    :goto_1
    add-int/2addr v1, v0

    .line 50
    mul-int/lit8 v1, v1, 0x1f

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const/16 v0, 0x4cf

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v0, 0x4d5

    .line 60
    .line 61
    :goto_2
    add-int/2addr v1, v0

    .line 62
    mul-int/lit8 v1, v1, 0x1f

    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    const/16 v2, 0x4cf

    .line 69
    .line 70
    :cond_3
    add-int/2addr v1, v2

    .line 71
    return v1
.end method

.method public isRetainAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    return v0
.end method

.method public isSharedSubscriptionAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    return v0
.end method

.method public isWildcardSubscriptionAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MqttConnAckRestrictions{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->toAttributeString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x7d

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
