.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/hivemq/client/internal/util/collections/HandleList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-static {}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->values()[Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/hivemq/client/internal/util/collections/HandleList;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    return-void
.end method

.method private static add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/HandleList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            "Lcom/hivemq/client/internal/util/collections/HandleList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->getFilter()Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->getHandle()Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    move-result-object p1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    return-void
.end method

.method public clear(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->clear(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    invoke-virtual {v2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public findMatching(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->findMatching(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    iget-boolean v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->subscriptionFound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->SUBSCRIBED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/HandleList;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->UNSOLICITED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ALL:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/HandleList;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->REMAINING:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/HandleList;)V

    :cond_1
    return-void
.end method

.method public getSubscriptions()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->getSubscriptions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public subAck(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/util/collections/ImmutableList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "I",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {p1, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    invoke-virtual {v5}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v5

    if-nez v0, :cond_2

    invoke-interface {p3, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v6, 0x1

    :goto_3
    invoke-interface {v4, v5, p2, v6}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->suback(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {p1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    invoke-interface {v1, v2, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subscribeGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->getFilter()Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    new-instance v1, Lcom/hivemq/client/internal/util/collections/HandleList;

    invoke-direct {v1}, Lcom/hivemq/client/internal/util/collections/HandleList;-><init>()V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    aput-object v1, v2, v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/util/collections/HandleList;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->setHandle(Lcom/hivemq/client/internal/util/collections/HandleList$Handle;)V

    return-void
.end method
