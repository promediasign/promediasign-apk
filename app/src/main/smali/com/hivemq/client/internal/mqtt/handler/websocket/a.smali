.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/websocket/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;

.field public final synthetic b:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/a;->a:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/a;->b:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/a;->a:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/a;->b:Lio/netty/channel/ChannelHandlerContext;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->a(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method
