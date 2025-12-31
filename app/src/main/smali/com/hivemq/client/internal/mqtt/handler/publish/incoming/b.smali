.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/b;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/b;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->a(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->c(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/b;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
