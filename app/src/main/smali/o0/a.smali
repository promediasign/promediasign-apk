.class public final synthetic Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo0/a;->a:I

    iput-object p1, p0, Lo0/a;->b:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lo0/a;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lo0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/a;->b:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lo0/a;->b:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;

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
    iget v0, p0, Lo0/a;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
