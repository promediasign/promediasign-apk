.class public abstract Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithCodesAndId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;"
    }
.end annotation


# instance fields
.field private final packetIdentifier:I

.field private final reasonCodes:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TR;>;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->packetIdentifier:I

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->reasonCodes:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-void
.end method


# virtual methods
.method public getPacketIdentifier()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->packetIdentifier:I

    return v0
.end method

.method public getReasonCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->reasonCodes:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId<",
            "TR;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->reasonCodes:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->reasonCodes:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public partialHashCode()I
    .locals 2

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->partialHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->reasonCodes:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packetIdentifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->packetIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
