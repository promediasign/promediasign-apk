.class public final synthetic Lr0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lr0/e;->a:I

    iput-object p1, p0, Lr0/e;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p2, p0, Lr0/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lr0/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr0/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lr0/e;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    invoke-static {v1, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->j(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lr0/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lr0/e;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    invoke-static {v1, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->m(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lr0/e;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
