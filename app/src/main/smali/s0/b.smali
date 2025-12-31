.class public final synthetic Ls0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field public final synthetic c:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

.field public final synthetic d:Lio/netty/channel/EventLoop;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/b;->a:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    iput-object p2, p0, Ls0/b;->b:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p3, p0, Ls0/b;->c:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iput-object p4, p0, Ls0/b;->d:Lio/netty/channel/EventLoop;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v3, p0, Ls0/b;->d:Lio/netty/channel/EventLoop;

    move-object v5, p2

    check-cast v5, Ljava/lang/Throwable;

    iget-object v0, p0, Ls0/b;->a:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    iget-object v1, p0, Ls0/b;->b:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v2, p0, Ls0/b;->c:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->b(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
