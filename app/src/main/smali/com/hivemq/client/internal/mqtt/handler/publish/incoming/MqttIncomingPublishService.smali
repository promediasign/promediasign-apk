.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private blockingFlowCount:I

.field final incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

.field private final incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

.field private nextQoS1Or2PublishId:J

.field private final qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            ">.Iterator;"
        }
    .end annotation
.end field

.field private final qos0Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            ">;"
        }
    .end annotation
.end field

.field private final qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            ">.Iterator;"
        }
    .end annotation
.end field

.field private final qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            ">;"
        }
    .end annotation
.end field

.field private referencedFlowCount:I

.field private runIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->iterator()Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->iterator()Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->nextQoS1Or2PublishId:J

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    return-void
.end method

.method private emit(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 7

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->dereference()I

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    goto :goto_2

    :cond_0
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->runIndex:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requested(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    iget-object v2, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    iget-boolean v3, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->manualAcknowledgement:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;

    invoke-direct {v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;

    invoke-direct {v3, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    :goto_1
    invoke-virtual {v2, v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->withConfirmable(Lcom/hivemq/client/internal/checkpoint/Confirmable;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->dereference()I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->checkDone()V

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private onPublish(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->findMatching(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "No publish flow registered for {}."

    iget-object v2, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-interface {v0, v1, v2}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->drain()V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->reference()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    :cond_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->emit(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    return-void
.end method


# virtual methods
.method public drain()V
    .locals 3

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->runIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->runIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->reset()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->emit(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->getIterated()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->areAcknowledged()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->remove()V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ack(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    if-ne v0, v2, :cond_0

    return-void

    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->reset()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->emit(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->getIterated()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    if-ne v0, v2, :cond_3

    :cond_5
    return-void
.end method

.method public onPublishQos0(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;I)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size()I

    move-result v0

    if-lt v0, p2, :cond_1

    sget-object p2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v0, "QoS 0 publish message dropped."

    invoke-interface {p2, v0}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->reset()V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->remove()V

    invoke-virtual {p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p2

    :goto_0
    check-cast p2, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->dereference()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->onPublish(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->offer(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onPublishQos1Or2(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;I)Z
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->nextQoS1Or2PublishId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->nextQoS1Or2PublishId:J

    iput-wide v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->id:J

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->onPublish(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->areAcknowledged()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ack(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->offer(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
