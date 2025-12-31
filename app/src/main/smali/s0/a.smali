.class public final synthetic Ls0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic a:Lio/netty/channel/EventLoop;

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field public final synthetic c:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field public final synthetic d:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Ls0/a;->a:Lio/netty/channel/EventLoop;

    iput-object p1, p0, Ls0/a;->b:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p2, p0, Ls0/a;->c:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object p3, p0, Ls0/a;->d:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls0/a;->c:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v1, p0, Ls0/a;->d:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iget-object v2, p0, Ls0/a;->a:Lio/netty/channel/EventLoop;

    iget-object v3, p0, Ls0/a;->b:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-static {v2, v3, v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->c(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/util/concurrent/Future;)V

    return-void
.end method
