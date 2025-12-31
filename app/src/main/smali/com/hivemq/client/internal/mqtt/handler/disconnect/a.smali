.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

.field public final synthetic c:Lio/netty/channel/Channel;

.field public final synthetic d:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

.field public final synthetic e:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->a:I

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->b:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->c:Lio/netty/channel/Channel;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->d:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->e:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->d:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->e:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->b:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->c:Lio/netty/channel/Channel;

    invoke-static {v2, v3, v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->a(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->d:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->e:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->b:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/a;->c:Lio/netty/channel/Channel;

    invoke-static {v2, v3, v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->c(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
