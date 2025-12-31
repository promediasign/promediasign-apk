.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2IntermediateResult;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos1Result;
    }
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;

.field private final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public acknowledged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-virtual {p1, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRawError()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "publish="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttPublishResult{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
