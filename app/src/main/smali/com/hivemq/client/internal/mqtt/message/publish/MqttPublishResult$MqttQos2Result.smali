.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MqttQos2Result"
.end annotation


# instance fields
.field private final pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pubRec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttQos2Result{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
