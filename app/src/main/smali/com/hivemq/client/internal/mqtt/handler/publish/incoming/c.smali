.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/Queue;

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/c;->a:Ljava/util/Queue;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/c;->b:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/c;->b:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/c;->a:Ljava/util/Queue;

    invoke-static {v1, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->b(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
