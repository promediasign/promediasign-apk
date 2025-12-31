.class public final synthetic Lg1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg1/e;->a:I

    iput-object p1, p0, Lg1/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lg1/e;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lg1/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->b(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Ljava/lang/Integer;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, p0, Lg1/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->l(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    check-cast p1, Lio/netty/channel/Channel;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, p0, Lg1/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->c(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lg1/e;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;

    invoke-virtual {v0, p1, p2}, Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;->registerDevice(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    .line 1
    iget v0, p0, Lg1/e;->a:I

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
