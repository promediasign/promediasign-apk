.class public interface abstract Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clear(Ljava/lang/Throwable;)V
.end method

.method public abstract findMatching(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
.end method

.method public abstract getSubscriptions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract suback(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)V
.end method

.method public abstract subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
.end method
