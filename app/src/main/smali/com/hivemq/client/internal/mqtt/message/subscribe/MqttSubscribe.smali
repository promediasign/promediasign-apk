.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;


# instance fields
.field private final subscriptions:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->subscriptions:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-void
.end method


# virtual methods
.method public createStateful(II)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->subscriptions:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->subscriptions:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->subscriptions:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public final synthetic getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 1
    invoke-static {p0}, LQ0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->partialHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->subscriptions:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subscriptions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->subscriptions:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->toAttributeString()Ljava/lang/String;

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

    const-string v1, "MqttSubscribe{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
