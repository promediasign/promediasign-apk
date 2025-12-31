.class public abstract Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithReason"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;,
        Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
    }
.end annotation


# instance fields
.field private final reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-void
.end method


# virtual methods
.method public getRawReasonString()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->partialHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->toAttributeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reasonString="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->toAttributeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
