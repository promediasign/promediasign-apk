.class public abstract Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;"
    }
.end annotation


# instance fields
.field private final reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    return-void
.end method


# virtual methods
.method public getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    return-object v0
.end method

.method public partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode<",
            "TR;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

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

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
