.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;,
        Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;,
        Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    }
.end annotation


# instance fields
.field private rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compact()V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->clear(Ljava/lang/Throwable;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    return-void
.end method

.method public findMatching(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 2

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findMatching(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSubscriptions()Ljava/util/Map;
    .locals 5
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

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;

    iget-object v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;->node:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    iget-object v2, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;->parentTopicLevels:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-virtual {v3, v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getSubscriptions(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Ljava/util/Map;Ljava/util/Queue;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public suback(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)V
    .locals 2

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->suback(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->compact()V

    return-void
.end method

.method public subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object p1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object p1

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-nez p2, :cond_0

    new-instance p2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->subscribe(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-void
.end method
