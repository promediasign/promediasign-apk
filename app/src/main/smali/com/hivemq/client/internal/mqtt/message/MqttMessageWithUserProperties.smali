.class public abstract Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;
    }
.end annotation


# instance fields
.field private final userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    return-void
.end method


# virtual methods
.method public getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    return-object v0
.end method

.method public partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)Z
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public partialHashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->hashCode()I

    move-result v0

    return v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->asList()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userProperties="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
