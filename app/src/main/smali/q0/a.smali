.class public final synthetic Lq0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lio/netty/channel/ChannelInboundHandlerAdapter;


# direct methods
.method public synthetic constructor <init>(Lio/netty/channel/ChannelInboundHandlerAdapter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq0/a;->a:I

    iput-object p1, p0, Lq0/a;->b:Lio/netty/channel/ChannelInboundHandlerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lq0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq0/a;->b:Lio/netty/channel/ChannelInboundHandlerAdapter;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->l(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lq0/a;->b:Lio/netty/channel/ChannelInboundHandlerAdapter;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    check-cast p1, Lio/netty/channel/Channel;

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->a(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lq0/a;->b:Lio/netty/channel/ChannelInboundHandlerAdapter;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    check-cast p1, Lio/netty/channel/Channel;

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->b(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lq0/a;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
