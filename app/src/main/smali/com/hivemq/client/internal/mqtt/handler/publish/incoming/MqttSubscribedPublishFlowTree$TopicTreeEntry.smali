.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
.super Lcom/hivemq/client/internal/util/collections/NodeList$Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopicTreeEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/util/collections/NodeList$Node<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
        ">;"
    }
.end annotation


# instance fields
.field acknowledged:Z

.field handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            ">;"
        }
    .end annotation
.end field

.field final subscriptionIdentifier:I

.field final subscriptionOptions:B

.field final topicFilterPrefix:[B


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;-><init>()V

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionIdentifier:I

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->encodeSubscriptionOptions()B

    move-result p2

    iput-byte p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getPrefix()[B

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->topicFilterPrefix:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    return-void
.end method
