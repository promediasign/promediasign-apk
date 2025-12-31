.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopicTreeNode"
.end annotation


# static fields
.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index$Spec<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entries:Lcom/hivemq/client/internal/util/collections/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lcom/hivemq/client/internal/util/collections/Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

.field private singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

.field private topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hivemq/client/internal/util/collections/Index$Spec;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/b;-><init>(I)V

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/util/collections/Index$Spec;-><init>(Ljava/util/function/Function;I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->lambda$getSubscriptions$2(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->subscriptionFound:Z

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic b(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->lambda$getSubscriptions$1(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object p0

    return-object p0
.end method

.method private static clear(Lcom/hivemq/client/internal/util/collections/NodeList;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private compact()V
    .locals 6

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v4, :cond_2

    if-nez v2, :cond_2

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->removeNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->compact()V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->fuse(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/Index;->any()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->fuse(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    invoke-virtual {p1, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->forwardIfMatch(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method

.method private fuse(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    iget-object v2, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->concat(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    move-result-object v1

    iput-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    iput-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private getNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 2

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->forwardWhileEqual(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->before(I)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v1

    if-eq v1, v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->after(I)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object p2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iput-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    iput-object p2, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result p2

    if-eqz p2, :cond_1

    iput-object p1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/hivemq/client/internal/util/collections/Index;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    invoke-direct {p2, v1}, Lcom/hivemq/client/internal/util/collections/Index;-><init>(Lcom/hivemq/client/internal/util/collections/Index$Spec;)V

    iput-object p2, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method private static getSubscriptions(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;ZLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getLast()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->acknowledged:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->topicFilterPrefix:[B

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->toFilter([BLcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Z)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v3

    iget-byte v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->decodeQos(B)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v4

    iget-byte v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->decodeNoLocal(B)Z

    move-result v5

    iget-byte v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->decodeRetainHandling(B)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    move-result-object v6

    iget-byte v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->decodeRetainAsPublished(B)Z

    move-result v7

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZLcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;Z)V

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionIdentifier:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/b;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/b;-><init>(I)V

    invoke-static {p3, v2, v3}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getPrev()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static synthetic lambda$getSubscriptions$1(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;

    invoke-direct {v0, p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getSubscriptions$2(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    return-object p0
.end method

.method private removeNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V
    .locals 2

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/Index;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result p1

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    :cond_1
    :goto_0
    return-void
.end method

.method private static suback(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            "IZ)Z"
        }
    .end annotation

    .line 2
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getPrefix()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionIdentifier:I

    if-ne v1, p2, :cond_1

    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->topicFilterPrefix:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->acknowledged:Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private traverseNext(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->next()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    :goto_0
    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->traverseNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/Index;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static traverseNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 3

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    invoke-virtual {p1, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->forwardIfEqual(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public clear(Ljava/lang/Throwable;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/Index;->any()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->clear(Lcom/hivemq/client/internal/util/collections/NodeList;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->clear(Lcom/hivemq/client/internal/util/collections/NodeList;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    :cond_3
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz p1, :cond_4

    invoke-direct {p1, p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->removeNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    :cond_4
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    return-object p1
.end method

.method public findMatching(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/NodeList;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->next()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/util/collections/Index;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-nez v1, :cond_1

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    invoke-static {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->fork()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object v2

    invoke-static {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v0, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1, v2, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findMatching(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p1

    goto :goto_1

    :cond_5
    return-object v1

    :cond_6
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/NodeList;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/NodeList;)V

    return-object v1
.end method

.method public getSubscriptions(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Ljava/util/Map;Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;>;",
            "Ljava/util/Queue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->concat(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    :goto_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getSubscriptions(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;ZLjava/util/Map;)V

    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getSubscriptions(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;ZLjava/util/Map;)V

    :cond_3
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz p2, :cond_4

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/c;

    invoke-direct {v0, p3, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/c;-><init>(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/util/collections/Index;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz p2, :cond_5

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;

    invoke-direct {v0, p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public suback(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->traverseNext(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasMultiLevelWildcard()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->suback(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->suback(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->compact()V

    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->next()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-nez v0, :cond_0

    new-instance p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    return-object p1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-nez v0, :cond_2

    new-instance v0, Lcom/hivemq/client/internal/util/collections/Index;

    sget-object v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    invoke-direct {v0, v2}, Lcom/hivemq/client/internal/util/collections/Index;-><init>(Lcom/hivemq/client/internal/util/collections/Index$Spec;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/Index;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    :goto_0
    if-nez v1, :cond_3

    new-instance p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasMultiLevelWildcard()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez p1, :cond_5

    new-instance p1, Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-direct {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    :cond_5
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez p1, :cond_7

    new-instance p1, Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-direct {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    :cond_7
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    goto :goto_1

    :goto_2
    return-object v1
.end method
