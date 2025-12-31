.class public final synthetic Lr0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr0/f;->a:I

    iput-object p1, p0, Lr0/f;->b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lr0/f;->a:I

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    check-cast p2, Ljava/lang/Throwable;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr0/f;->b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->o(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lr0/f;->b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->i(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    .line 1
    iget v0, p0, Lr0/f;->a:I

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
