.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;
.super Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
        ">;"
    }
.end annotation


# instance fields
.field private final subscriptionIdentifier:I


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;-><init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;I)V

    iput p3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->subscriptionIdentifier:I

    return-void
.end method


# virtual methods
.method public getSubscriptionIdentifier()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->subscriptionIdentifier:I

    return v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->subscriptionIdentifier:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subscriptionIdentifier="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->subscriptionIdentifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const-string v1, "MqttStatefulSubscribe{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
